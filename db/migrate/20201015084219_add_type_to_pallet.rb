class AddTypeToPallet < ActiveRecord::Migration[6.0]
  def change
    add_column :pallets, :type, :string
  end
end
