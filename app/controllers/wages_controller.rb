require 'json'

class WagesController < ApplicationController
  skip_before_action :authenticate_registration!, only: :preview

  def index
  end

  def new
    @wage = Wage.new
    @fields = Field.all
    redirect_to users_path if current_user.wage
  end

  def create
    @wage = Wage.new
    @wage.field = Field.find(wages_params[:field_id])
    @wage.company = Company.find_by_name(wages_params[:company])
    @wage.years_worked = wages_params[:years_worked].to_i
    @wage.wage = wages_params[:wage].to_i
    @wage.user = current_user
    if @wage.save
      redirect_to users_path
    else
      render :new
    end
  end

  def preview
    field_avg_wage = Field.where(name: params["field"]["name"])[0].avg_wage
    calc = CalculatorService.new({ wage: field_avg_wage,
                                   years: 17,
                                   years_new: params["years"] })
    @result = calc.new_wage.to_i
    @field = params["field"]["name"]
    @years = params["years"]
  end

  private

  def wages_params
    params.require(:wage).permit(:wage, :field_id, :company, :years_worked)
  end
end
