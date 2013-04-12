class Stop < ActiveRecord::Base
  attr_accessible :activity_id, :pub_crawl_id, :venue_id
  belongs_to :pub_crawl
  belongs_to :venue
  belongs_to :activity
  has_many :check_ins
  has_many :responses
end
