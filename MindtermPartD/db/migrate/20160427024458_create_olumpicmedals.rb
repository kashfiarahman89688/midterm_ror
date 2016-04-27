class CreateOlumpicmedals < ActiveRecord::Migration
  def change
    create_table :olumpicmedals do |t|
      t.string :athlete_name
      t.string :event
      t.string :country
      t.string :medal_type
      t.timestamp :event_date

      t.timestamps null: false
    end
  end
end
