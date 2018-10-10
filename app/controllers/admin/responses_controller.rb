class Admin::ResponsesController < ApplicationController

  before_action :admin_only
  layout 'admin'
  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.paginate(:page => params[:page])
  end

end
