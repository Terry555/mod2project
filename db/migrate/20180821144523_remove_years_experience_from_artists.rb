class RemoveYearsExperienceFromArtists < ActiveRecord::Migration[5.2]
  def change
    remove_column :artists, :years_experience, :integer
  end
end
