class CreateGradingPalletCompanions < ActiveRecord::Migration[6.0]
  def change
    create_table :grading_pallet_companions do |t|
      t.string :value
      t.integer :category_id
      t.integer :grading_pallet_id
    end
  end
end
