class HomeController < ApplicationController
  before_action :authenticate_user!
  require 'csv'
  def index
  end

  def import
    headers =  CSV.open(params[:file], &:readline)
    @fields = headers[0].split(";")
    #render 'select_fields'
  end
end
