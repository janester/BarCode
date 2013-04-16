# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  phone           :string(255)
#  is_owner        :boolean
#  address         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :address, :email, :is_owner, :name, :password, :password_confirmation, :phone
  has_and_belongs_to_many :badges
  has_many :responses
  has_and_belongs_to_many :pub_crawls
  has_many :check_ins
  has_many :venues

  def todays_crawl
    self.pub_crawls.where(:date => Date.today).first
  end
end
