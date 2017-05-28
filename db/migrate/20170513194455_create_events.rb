class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string    :name,        null: false
      t.string    :location,    null: false
      t.datetime  :date_time,   null: false

      t.timestamps null: false
    end
  end
end
