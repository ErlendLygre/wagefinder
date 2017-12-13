class UsersController < ApplicationController
  def index
    @user = current_user.registration.email
    @wage = Wage.all
  end

  def show
  end

  def create
  end
end
