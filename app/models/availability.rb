# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  date       :date
#  promotion  :string(255)
#  venue_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Availability < ActiveRecord::Base
  attr_accessible :date, :promotion, :venue_id
  belongs_to :venue
end
