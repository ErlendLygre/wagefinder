class PagesController < ApplicationController
  skip_before_action :authenticate_registration!, only: :home

  def home
    redirect_to new_wage_path if user_signed_in?
    @field = Field.all
  end
end
