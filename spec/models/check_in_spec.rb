# == Schema Information
#
# Table name: check_ins
#
#  id         :integer          not null, primary key
#  latitude   :float
#  longitude  :float
#  user_id    :integer
#  stop_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe CheckIn do
  pending "add some examples to (or delete) #{__FILE__}"
end
