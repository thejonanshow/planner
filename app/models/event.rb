# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  location   :string           not null
#  date_time  :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord

  has_many :workouts

  validates :name, :date_time, :location, presence: true
  validate :parse_date_time

  private

  def parse_date_time
    self.date_time = DateTime.strptime(:date_time, "%m/%d/%Y %l:%M %p")
  end

end
