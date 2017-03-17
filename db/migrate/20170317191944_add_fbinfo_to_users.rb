class AddFbinfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :age_range, :integer
    add_column :users, :locale, :string
    add_column :users, :picture_url, :string
  end
end
