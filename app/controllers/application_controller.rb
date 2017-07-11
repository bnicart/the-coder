class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  helper_method :valid_user?, :format_date

  def valid_user?
    # TODO: UPDATE THIS CODE TO BE MORE "VALID"
    true
  end

  def format_date(date)
    return "Invalid date" unless date.class != "Time"
    Time.use_zone('Asia/Manila')  {
      date.in_time_zone.strftime("%m/%d/%Y %r")
    }
  end
end
