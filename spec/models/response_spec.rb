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

require 'spec_helper'

describe Response do
  pending "add some examples to (or delete) #{__FILE__}"
end
