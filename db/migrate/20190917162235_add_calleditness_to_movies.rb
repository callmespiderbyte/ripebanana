class AddCalleditnessToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :calleditness, :integer
  end
end
