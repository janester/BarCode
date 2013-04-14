# == Schema Information
#
# Table name: check_ins
#
#  id         :integer          not null, primary key
#  latitude   :float
#  longitude  :float
#  user_id    :integer
#  stop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CheckIn < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :stop_id, :user_id
  belongs_to :user
  belongs_to :stop
end
