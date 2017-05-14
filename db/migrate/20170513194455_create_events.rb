class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string  :event_name, null: false
      t.date    :event_date, null: false
      t.time    :event_time, null: false

      t.timestamps null: false
    end
  end
end
