class AddPriceToConcerts < ActiveRecord::Migration[5.2]
  def change
    add_column :concerts, :price, :integer
  end
end
