# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  latitude   :float
#  longitude  :float
#  image      :string(255)
#  name       :string(255)
#  user_id    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Venue do
  pending "add some examples to (or delete) #{__FILE__}"
end
