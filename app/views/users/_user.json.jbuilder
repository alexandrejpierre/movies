json.extract! user, :id, :pseudo, :name, :first_name, :email, :fb_connected, :created_at, :updated_at
json.url user_url(user, format: :json)