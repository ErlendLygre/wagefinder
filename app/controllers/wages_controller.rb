require 'json'
require 'open-uri'

class WagesController < ApplicationController
  def index

  end

  def new
  end

  def preview
    url = Field.where(name: params["field"])[0].file
    file_content = File.read(Rails.root.to_s + "/app/controllers/" + url)
    data = JSON.parse(file_content)
    @result = data["result"][params["years_worked"]]
    @field = params["field"]
    @years = params["years_worked"]
  end

  def display

  end
end
