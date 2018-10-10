class Admin::HomeController < ApplicationController
  before_action :admin_only
  layout 'admin'

  def index
    @stats = Stats.new
  end
end
