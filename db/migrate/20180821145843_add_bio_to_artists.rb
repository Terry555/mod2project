class AddBioToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :bio, :string
  end
end
