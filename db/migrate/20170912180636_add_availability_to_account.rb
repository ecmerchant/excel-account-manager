class AddAvailabilityToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :availability, :boolean
  end
end
