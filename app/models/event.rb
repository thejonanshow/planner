# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  event_name :string           not null
#  event_date :date             not null
#  event_time :time             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord

  validates :event_name, :event_date, :event_time, presence: true

end
