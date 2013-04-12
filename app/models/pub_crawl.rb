class PubCrawl < ActiveRecord::Base
  attr_accessible :date, :end_time, :name, :start_time
  has_and_belongs_to_many :users
  has_many :stops
end
