# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  date       :date
#  promotion  :string(255)
#  venue_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Availability do
  pending "add some examples to (or delete) #{__FILE__}"
end
