class RemoveGenresNamesFromTmdb < ActiveRecord::Migration
  def change
		remove_column :tmdbs, :genres_name
  end
end
