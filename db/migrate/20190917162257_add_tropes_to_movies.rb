class AddTropesToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :tropes, :integer
  end
end
