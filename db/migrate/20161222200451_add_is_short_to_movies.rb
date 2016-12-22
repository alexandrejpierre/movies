class AddIsShortToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :IsShort, :string
  end
end
