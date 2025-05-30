class HomeController < ApplicationController
  def index
    frontend_url = ENV['FRONTEND_URL'] || 'http://localhost:8080/'
    redirect_to frontend_url, allow_other_host: true
  end
end
