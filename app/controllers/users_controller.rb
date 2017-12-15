class UsersController < ApplicationController
  def index
    @companies = Company.all
    @user = current_user.registration.email
    @wage = Wage.all
    @yr_5 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 5 }).new_wage.to_i
    @yr_10 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 10 }).new_wage.to_i
    @company_avg = company_avg(current_user.wage.field)
  end

  def company_avg(field, company = current_user.wage.company)
    company_wages = Wage.where(company: company)
    company_wage_by_field = company_wages.select{ |wage| wage.field == field }
    company_wage_by_field.map!(&:wage)
    company_total = company_wage_by_field.inject(0){|sum,x| sum + x }
    return company_total / company_wage_by_field.size
  end

  def show
  end

  def create
  end
end
