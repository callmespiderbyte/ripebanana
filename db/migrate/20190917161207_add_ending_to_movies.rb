class AddEndingToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :ending, :integer
  end
end
