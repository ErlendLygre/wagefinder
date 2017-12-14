class UsersController < ApplicationController
  def index
    @user = current_user.registration.email
  end

  def show
  end

  def create
  end
end
