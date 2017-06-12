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

class Workout < ApplicationRecord

  belongs_to :event

  validates :name, :time_limit, :event_id, presence: true

end
