class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.string    :name,        null: false
      t.datetime  :time_limit,  null: false
      t.integer   :event_id,    null: false

      t.timestamps
    end
  end
end
