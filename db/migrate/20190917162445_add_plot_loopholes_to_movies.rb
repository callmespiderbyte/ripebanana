class AddPlotLoopholesToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :plot_loopholes, :integer
  end
end
