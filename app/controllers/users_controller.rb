class UsersController < ApplicationController
  def index
    @current_page = 'user'
    @companies = Company.all
    @user = current_user.registration.email
    @wage = Wage.all
    calc = CalculatorService.new({ wage: current_user.wage.field.avg_wage,
                                   years: 17,
                                   years_new: current_user.wage.years_worked })
    @should_be_making = calc.new_wage.to_i

    @yr_5 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 5 })
                                   .new_wage.to_i + inflation(5)

    @yr_10 = CalculatorService.new({wage: current_user.wage.wage,
                                   years: current_user.wage.years_worked,
                                   years_new: current_user.wage.years_worked + 10 })
                                   .new_wage.to_i + inflation(10)
    @user_field = current_user.wage.field

    if @should_be_making < current_user.wage.wage
      @how_you_are_doing = "doing well"
    else
      @how_you_are_doing = "ask for more"
    end
  end

  def inflation (years)
    ((current_user.wage.wage * 1.024**years) - current_user.wage.wage).to_i
  end

  def fields
    @current_page = 'fields'
    @fields = Field.all

    @field_name = []
    @field_avg_wage = []
    @fields.each do |field|
      @field_name << field.name
      @field_avg_wage << field.avg_wage
    end
  end

  def companies
    @current_page = 'companies'
    @company_avg = CompanyAverageService.new(current_user.wage.field, current_user.wage.company).company_avg
    @company_data = current_user.wage.field.companies_hash
  end
end
