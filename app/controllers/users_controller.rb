class UsersController < ApplicationController
  def index
    @user = current_user.registration.email
    @wage = Wage.all
    @yr_5 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 5 }).new_wage.to_i
    @yr_10 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 10 }).new_wage.to_i
  end

  def show
  end

  def create
  end
end
