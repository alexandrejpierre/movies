class AddColumnToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :freshest, :string
  end
end
