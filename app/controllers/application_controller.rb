class ApplicationController < ActionController::Base

  def admin_only
    if(Rails.env.production?)
      request_http_basic_authentication unless admin?
    end
  end

  def admin?
    authenticate_with_http_basic do |username, password|
      username == ENV['admin_username'] && password == ENV['admin_password']
    end
  end
end
