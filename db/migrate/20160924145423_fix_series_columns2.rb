class FixSeriesColumns2 < ActiveRecord::Migration
  def change
    rename_column :movies, :seriesid, :seriesID
  end
end
