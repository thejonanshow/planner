# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  date_time  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Event < ApplicationRecord

  validates :name, :date_time, presence: true

end
