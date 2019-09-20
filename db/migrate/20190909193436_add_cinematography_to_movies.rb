class AddCinematographyToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :cinematography, :integer
  end
end
