class CreateTUserAccounts < ActiveRecord::Migration
  def change
    create_table :t_user_accounts do |t|

      t.timestamps null: false
    end
  end
end
