class CreateTPeople < ActiveRecord::Migration
  def change
    create_table :t_people do |t|
      t.string :FIRST_NAME
      t.string :LAST_NAME

      t.timestamps null: false
    end
  end
end
