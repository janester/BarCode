# == Schema Information
#
# Table name: stops
#
#  id           :integer          not null, primary key
#  pub_crawl_id :integer
#  venue_id     :integer
#  activity_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'spec_helper'

describe Stop do
  pending "add some examples to (or delete) #{__FILE__}"
end
