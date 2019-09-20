class AddLeadActorsAssToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :lead_actors_ass, :integer
  end
end
