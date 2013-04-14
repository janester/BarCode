# == Schema Information
#
# Table name: responses
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  user_id    :integer
#  stop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ActiveRecord::Base
  attr_accessible :stop_id, :type, :user_id
  belongs_to :user
  belongs_to :stop
end
