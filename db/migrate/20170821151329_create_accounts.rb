class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.text :user
      t.text :pass

      t.timestamps
    end
  end
end
