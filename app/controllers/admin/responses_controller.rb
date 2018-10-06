class Admin::ResponsesController < ApplicationController

  before_action :admin_only
  layout 'scaffold'
  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all
  end

end
