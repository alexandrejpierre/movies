class FixSeriesNames < ActiveRecord::Migration
  def change
	rename_column :movies, :season, :Season
	rename_column :movies, :episode, :Episode
  end
end
