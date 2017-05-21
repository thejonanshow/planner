# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  location   :string           not null
#  date_time  :datetime         not null
#  workout_id :integer          not null
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
