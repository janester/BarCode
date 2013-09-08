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

class Availability < ActiveRecord::Base
  attr_accessible :date, :promotion, :venue_id
  belongs_to :venue
  validate :one_availability_per_day_per_venue

  def one_availability_per_day_per_venue
    if self.venue.availabilities.map(&:date).include?(self.date)
      self.errors.add(:uniqueness, "only one availability per venue per day")
    end
  end
end
