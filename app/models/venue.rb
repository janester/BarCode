# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  address    :string(255)
#  latitude   :float
#  longitude  :float
#  image      :string(255)
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Venue < ActiveRecord::Base
  attr_accessible :address, :image, :latitude, :longitude, :name, :user_id, :remote_image_url
  has_and_belongs_to_many :categories
  has_many :activities
  has_many :stops
  has_many :availabilities
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  mount_uploader :image, VenueImageUploader
end
