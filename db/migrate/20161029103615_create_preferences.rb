class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
		t.belongs_to :movie, index: true
		t.belongs_to :user, index: true
		t.string :likes
		t.timestamps null: false
    end
  end
end
