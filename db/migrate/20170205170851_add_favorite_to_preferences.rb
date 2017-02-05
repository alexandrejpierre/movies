class AddFavoriteToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :favorite, :string
  end
end
