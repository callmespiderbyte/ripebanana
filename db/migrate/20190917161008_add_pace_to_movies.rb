class AddPaceToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :pace, :integer
  end
end
