class Venue < ActiveRecord::Base
  attr_accessible :address, :image, :latitude, :longitude, :name, :user_id
  has_and_belongs_to_many :categories
  has_many :activities
  has_many :stops
  has_many :availabilities
  belongs_to :user
end
