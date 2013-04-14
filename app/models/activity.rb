# == Schema Information
#
# Table name: activities
#
#  id         :integer          not null, primary key
#  text       :string(255)
#  type       :string(255)
#  venue_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Activity < ActiveRecord::Base
  attr_accessible :text, :type, :venue_id
  belongs_to :venue
  has_many :stops
end
