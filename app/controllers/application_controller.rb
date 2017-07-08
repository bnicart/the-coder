class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  helper_method :valid_user?

  def valid_user?
    # TODO: UPDATE THIS CODE TO BE MORE "VALID"
    true
  end
end
