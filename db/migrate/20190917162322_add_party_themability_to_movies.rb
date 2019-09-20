class AddPartyThemabilityToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :party_themability, :integer
  end
end
