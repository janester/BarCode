# == Schema Information
#
# Table name: pub_crawls
#
#  id         :integer          not null, primary key
#  date       :date
#  start_time :time
#  end_time   :time
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PubCrawl < ActiveRecord::Base
  attr_accessible :date, :end_time, :name, :start_time
  has_and_belongs_to_many :users
  has_many :stops
  validates :name, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true


  def venues
    self.stops.map(&:venue)
  end

  def self.create_times
    times = []
    25.times do |hour|
      hour < 10 ? a = "0#{hour}:00" : a = "#{hour}:00"
      times << [a,a]
    end
    return times
  end

  def self.create_end_times(start)
    end_times = []
    (25-start).times do |hour|
      hour+start < 10 ? a = "0#{hour+start}:00" : a = "#{hour+start}:00"
      end_times << [a,a]
    end
    return end_times
  end
end
