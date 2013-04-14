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
end
