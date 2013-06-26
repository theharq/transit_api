class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :route
      t.references :calendar
      t.string :route_str
      t.string :service_id
      t.string :trip_id
      t.string :trip_headsign

      t.timestamps
    end
    add_index :trips, :route_id
    add_index :trips, :calendar_id
  end
end