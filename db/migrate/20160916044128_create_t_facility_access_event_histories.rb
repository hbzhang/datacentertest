class CreateTFacilityAccessEventHistories < ActiveRecord::Migration
  def change
    create_table :t_facility_access_event_histories do |t|
      t.string :first_name
      t.string :last_name
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
