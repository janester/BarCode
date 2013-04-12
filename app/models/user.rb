class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :address, :email, :is_owner, :name, :password, :password_confirmation, :phone
  has_and_belongs_to_many :badges
  has_many :responses
  has_and_belongs_to_many :pub_crawls
  has_many :check_ins
  has_many :venues
end
