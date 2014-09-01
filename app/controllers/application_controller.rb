class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def logged_in?
    current_user != nil
  end

  def genre_list
    ActsAsTaggableOn::Tag.all
  end

  def instrument_list
    Instrument.all
  end

  def user_instrument_test
    UserInstrument.new
  end

  helper_method :logged_in?
  helper_method :current_user
  helper_method :genre_list
  helper_method :instrument_list
  helper_method :user_instrument_test

end
