class CheckIn < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :stop_id, :user_id
  belongs_to :user
  belongs_to :stop
end
