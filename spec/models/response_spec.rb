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

require 'spec_helper'

describe Response do
  pending "add some examples to (or delete) #{__FILE__}"
end
