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

  def add_participant_to_session participant
    session[:participant] = participant.id
  end

  def session_participant_only id
    if session[:participant].to_s != id.to_s
      render(:file => File.join(Rails.root, 'public/403.html'), :status => 403, :layout => false)
    end
  end
end
