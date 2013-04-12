class Badge < ActiveRecord::Base
  attr_accessible :image, :name, :points
  has_and_belongs_to_many :users
end
