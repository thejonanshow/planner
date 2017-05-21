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

require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) { FactoryGirl.build(:event) }

  it 'is not valid with valid attributes' do
    expect(event).to be_valid
  end

  it 'is not valid without event_name' do
    event.event_name = nil
    expect(event).not_to be_valid
  end

  it 'is not valid without event_date ' do
    event.event_date = nil
    expect(event).not_to be_valid
  end

  it 'is not valid without event_time' do
    event.event_time = nil
    expect(event).not_to be_valid
  end

end
