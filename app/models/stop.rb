# == Schema Information
#
# Table name: stops
#
#  id           :integer          not null, primary key
#  pub_crawl_id :integer
#  venue_id     :integer
#  activity_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Stop < ActiveRecord::Base
  attr_accessible :activity_id, :pub_crawl_id, :venue_id
  belongs_to :pub_crawl
  belongs_to :venue
  belongs_to :activity
  has_many :check_ins
  has_many :responses
end
