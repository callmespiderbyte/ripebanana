class AddActingToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :acting, :integer
  end
end
