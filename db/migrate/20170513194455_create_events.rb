class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string  :name,        null: false
      t.string  :location,    null: false
      t.date    :date,        null: false
      t.time    :time,        null: false
      t.integer :workout_id,  null: false

      t.timestamps null: false
    end
  end
end
