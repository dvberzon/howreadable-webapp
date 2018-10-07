class Admin::ResponsesController < ApplicationController

  before_action :admin_only
  layout 'admin'
  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all
  end

end
