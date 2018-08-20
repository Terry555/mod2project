class ChangeFavoriteBandToFavoriteArtist < ActiveRecord::Migration[5.2]
  def change
    rename_column :fans, :favorite_band, :favorite_artist
  end
end
