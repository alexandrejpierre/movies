class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  def authenticate_token!
	authenticate_or_request_with_http_token do |token, options|
		@api_user = Admin.find_by(api_token: token)
	end
  end
end
