# == Schema Information
#
# Table name: workouts
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  time_limit :datetime         not null
#  event_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :workout do
    name "MyString"
    time_limit "2017-06-11 07:00:38"
    event_id 1
  end
end
