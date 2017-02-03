class AddTmdbmovieIdToPreferences < ActiveRecord::Migration
  def change
	add_reference :preferences, :tmdbmovie, index: true, foreign_key: true
  end
end
