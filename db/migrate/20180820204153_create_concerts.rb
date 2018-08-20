class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.references :artist, foreign_key: true
      t.references :venue, foreign_key: true
      t.references :ticket, foreign_key: true

      t.timestamps
    end
  end
end
