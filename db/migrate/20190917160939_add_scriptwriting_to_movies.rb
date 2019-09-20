class AddScriptwritingToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :scriptwriting, :integer
  end
end
