class Meetup < ActiveRecord::Base
  has_many :rosters
  has_many :users, through: :rosters
  
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :description, presence: true
  validates :creator, presence: true
  end
