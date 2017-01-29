class AddArraysToTmdb < ActiveRecord::Migration
  def change
	remove_column :tmdbs, :belongs_to_collection
	add_column :tmdbs, :belongs_to_collection, :hstore, :array => true
	add_column :tmdbs, :genres, :hstore, :array => true
	add_column :tmdbs, :production_companies, :hstore, :array => true
	add_column :tmdbs, :production_countries, :hstore, :array => true
  end
end
