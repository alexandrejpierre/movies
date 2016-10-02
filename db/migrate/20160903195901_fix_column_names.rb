class FixColumnNames < ActiveRecord::Migration
  def change
	rename_column :movies, :title, :Title
  end
end
