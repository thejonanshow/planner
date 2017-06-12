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

require 'rails_helper'

RSpec.describe Workout, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
