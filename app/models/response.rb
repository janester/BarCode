# == Schema Information
#
# Table name: responses
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  stop_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  response_type :string(255)
#  image         :string(255)
#

class Response < ActiveRecord::Base
  attr_accessible :stop_id, :response_type, :user_id, :image, :remote_image_url
  belongs_to :user
  belongs_to :stop
  mount_uploader :image, ResponseImageUploader

end
