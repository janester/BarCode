# == Schema Information
#
# Table name: badges
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  points     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Badge < ActiveRecord::Base
  attr_accessible :image, :name, :points
  has_and_belongs_to_many :users
end
