class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_registration!
  def user_signed_in?
    registration_signed_in?
  end
end
