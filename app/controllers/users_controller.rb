class UsersController < ApplicationController
  def index
    @companies = Company.all
    @user = current_user.registration.email
    @wage = Wage.all
    @yr_5 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 5 })
                                   .new_wage.to_i + inflation(5)

    @yr_10 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 10 })
                                   .new_wage.to_i + inflation(10)

    @company_avg = CompanyAverageService.new(current_user.wage.field, current_user.wage.company).company_avg
    @user_field = current_user.wage.field
  end

  def inflation (years)
    ((current_user.wage.wage * 1.024**years) - current_user.wage.wage).to_i
  end

  def show
  end

  def create
  end
end
