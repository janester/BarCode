class Activity < ActiveRecord::Base
  attr_accessible :text, :type, :venue_id
  belongs_to :venue
  has_many :stops
end
