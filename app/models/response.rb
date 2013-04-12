class Response < ActiveRecord::Base
  attr_accessible :stop_id, :type, :user_id
  belongs_to :user
  belongs_to :stop
end
