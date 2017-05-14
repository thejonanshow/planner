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

FactoryGirl.define do
  factory :event do
    event_name 'Omaha Open'
    event_date Date.new(2017, 7, 30)
    event_time Time.local(2017, 7, 8, 9, 10)

  end
end
