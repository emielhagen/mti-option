class CreateBoxerPalletCompanions < ActiveRecord::Migration[6.0]
  def change
    create_table :boxer_pallet_companions do |t|
      t.string :destination
      t.string :location
      t.string :category
      t.integer :boxer_pallet_id
    end
  end
end
