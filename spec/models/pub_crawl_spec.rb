# == Schema Information
#
# Table name: pub_crawls
#
#  id         :integer          not null, primary key
#  date       :date
#  start_time :time
#  end_time   :time
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe PubCrawl do
  pending "add some examples to (or delete) #{__FILE__}"
end
