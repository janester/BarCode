# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  latitude   :float
#  longitude  :float
#  image      :string(255)
#  name       :string(255)
#  user_id    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Venue < ActiveRecord::Base
  attr_accessible :address, :image, :latitude, :longitude, :name, :user_id
  has_and_belongs_to_many :categories
  has_many :activities
  has_many :stops
  has_many :availabilities
  belongs_to :user
end
