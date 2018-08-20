class CreateFans < ActiveRecord::Migration[5.2]
  def change
    create_table :fans do |t|
      t.string :name
      t.boolean :drunk
      t.integer :balance
      t.integer :age
      t.string :favorite_artist

      t.timestamps
    end
  end
end
