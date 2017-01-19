class AddScopeToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :scope, :string
  end
end
