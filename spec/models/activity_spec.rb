# == Schema Information
#
# Table name: activities
#
#  id            :integer          not null, primary key
#  text          :string(255)
#  venue_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  response_type :string(255)
#

require 'spec_helper'

describe Activity do
  pending "add some examples to (or delete) #{__FILE__}"
end
