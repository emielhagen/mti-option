class CreatePallets < ActiveRecord::Migration[6.0]
  def change
    create_table :pallets do |t|
      t.string :label
      t.datetime :deleted_at
      t.integer :pallet_type_id

      t.index :label

      t.timestamps
    end
  end
end
