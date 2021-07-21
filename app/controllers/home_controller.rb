class HomeController < ApplicationController
  before_action :authenticate_user!
  require 'csv'
  def index
  end

  def import
    CsvImporterWorker.perform_asyn(current_user,params[:file])
  end
end
