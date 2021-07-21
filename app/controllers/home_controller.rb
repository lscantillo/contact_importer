class HomeController < ApplicationController
  before_action :authenticate_user!
  require 'csv'
  def index
  end

  def import
    CsvImporterWorker.perform_async(current_user,params[:file])
    @contacts = Contact.all
  end
end
