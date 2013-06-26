class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :agency_id
      t.string :agency_name
      t.string :agency_url
      t.string :agency_timezone

      t.timestamps
    end
  end
end
