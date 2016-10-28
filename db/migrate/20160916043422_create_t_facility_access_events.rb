class CreateTFacilityAccessEvents < ActiveRecord::Migration
  def change
    create_table :t_facility_access_events do |t|

      t.timestamps null: false
    end
  end
end
