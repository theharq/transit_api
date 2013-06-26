class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :service_id
      t.boolean :monday
      t.boolean :tuesday
      t.boolean :wednesday
      t.boolean :thursday
      t.boolean :friday
      t.boolean :saturday
      t.boolean :sunday
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
