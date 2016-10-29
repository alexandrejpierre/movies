class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :pseudo
      t.string :name
      t.string :first_name
      t.string :email
      t.string :fb_connected

      t.timestamps null: false
    end
  end
end
