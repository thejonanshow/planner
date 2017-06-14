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

FactoryGirl.define do
  factory :event do
    name 'Omaha Open'
    location 'Omaha'
    date_time DateTime.now
  end
end
