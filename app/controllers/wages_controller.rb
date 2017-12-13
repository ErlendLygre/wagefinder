require 'json'

class WagesController < ApplicationController
  def index

  end

  def new
    @wage = Wage.new
  end

  def create
    @wage = Wage.new
    @wage.field = Field.find_by_name(wages_params[:field])
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
    url = Field.where(name: params["field"])[0].file
    file_content = File.read(Rails.root.to_s + "/app/controllers/" + url)
    data = JSON.parse(file_content)
    @result = data["result"][params["years_worked"]]
    @field = params["field"]
    @years = params["years_worked"]
  end

  private

  def wages_params
    params.require(:wage).permit(:wage, :field, :company, :years_worked)
  end
end
