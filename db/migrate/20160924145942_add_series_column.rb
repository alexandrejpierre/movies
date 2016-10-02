class AddSeriesColumn < ActiveRecord::Migration
  def change
     add_column :movies, :totalSeasons, :string
  end
end
