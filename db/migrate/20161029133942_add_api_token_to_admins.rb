class AddApiTokenToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :api_token, :string
  end
end
