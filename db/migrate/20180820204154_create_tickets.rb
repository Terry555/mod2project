class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :price
      t.references :fan, foreign_key: true
      t.references :concert, foreign_key: true

      t.timestamps
    end
  end
end
