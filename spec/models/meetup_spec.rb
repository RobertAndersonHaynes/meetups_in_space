require 'spec_helper'

describe Meetup do

  senario "I want to view a list of all available meetups so that I can get together with people with similar interests" do

    visit '/'

      it "should show a list of meetups alphabetically" do
        expect(page).to have_css ("ul.meetup-tile")
        expect(page).to have_content ("Name")
        expect(page).to have_content ("Location")
        expect(page).to have_content ("Description")
      end
    end

    senario "I want to view the details of a meetup so that I can learn more about its purpose" do

      visit '/'

        it "On index page: the name of each meetup should be a link to the meetup's show page" do
          expect(page).to have_content ("Meetups")
          expect(page).to have_css("")
        end


    senario "I want to view the details of a meetup so that I can learn more about its purpose" do

      visit '/'


        it "On the show page: should see the name, description, location, and the creator of the meetup" do
          expect(page).to have_content ("Creator")
          expect(page).to have_content ("Name")
          expect(page).to have_content ("Location")
          expect(page).to have_content ("Description")
        end

  end
