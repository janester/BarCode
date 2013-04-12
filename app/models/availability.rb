class Availability < ActiveRecord::Base
  attr_accessible :date, :promotion, :venue_id
  belongs_to :venue
end
