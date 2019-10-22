class Admin::HomeController < ApplicationController
  before_action :admin_only
  layout 'admin'

  def index
    respond_to do |format|
      format.html { @stats = Stats.new }
      format.json { @total = Response.num_participants_answered }
    end
  end
end
