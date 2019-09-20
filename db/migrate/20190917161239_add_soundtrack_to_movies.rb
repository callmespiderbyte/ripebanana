class AddSoundtrackToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :soundtrack, :integer
  end
end
