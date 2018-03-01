require 'sinatra'
require_relative 'config/application'
require 'pry'

set :bind, '0.0.0.0' #bind to all interfaces

helpers do
  def current_user
    if @current_user.nil? && session[:user_id]
      @current_user = User.find_by(id: session[:user_id])
      session[:user_id] = nil unless @current_user
    end
    @current_user
  end
end

get '/' do
  redirect '/meetups'
end

get '/auth/github/callback' do
  user = User.find_or_create_from_omniauth(env['omniauth.auth'])
  session[:user_id] = user.id
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

# user sees clickable list of meetups
get '/meetups' do
@current_user = current_user
@meetups = Meetup.all
  erb :'meetups/index'
end

#user sees hompage for meetup with relevant info and join button

# when user clicks join button user is added to the roster table in the data base as attending that meet up

# user can create meetup using form
get '/meetups/new' do
  @current_user = current_user
  if current_user
    erb :'meetups/form'
  else
    flash[:notice] = "You must be logged in!"
    redirect '/'
  end
end

# user input creates a new meetup and is added to the meetups table
post '/meetups/new' do
  name = params["meetup_name"]
  location = params["location"]
  description = params["description"]
  creator_id = params["creator_id"]
  creator = params["creator"]

new_meetup = Meetup.new(name: name, description: description, location: location, creator: creator, creator_id: creator_id)


  if !new_meetup.valid?
    flash[:notice] = new_meetup.errors.full_messages
    redirect '/meetups/new'

  else
    new_meetup.save

    new_roster = Roster.new(meetup_id: new_meetup.id, user_id: new_meetup.creator_id)
    new_roster.save
    redirect "/meetups/#{new_meetup.id}"
  end
end

get '/meetups/:id' do
  @meetup = Meetup.where(id:(params["id"]))

  @attendees = @meetup.first.users.first.username

  erb :'meetups/show'
end
