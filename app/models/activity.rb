# == Schema Information
#
# Table name: activities
#
#  id            :integer          not null, primary key
#  text          :string(255)
#  venue_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  response_type :string(255)
#

class Activity < ActiveRecord::Base
  attr_accessible :text, :response_type, :venue_id
  belongs_to :venue
  has_many :stops
end
