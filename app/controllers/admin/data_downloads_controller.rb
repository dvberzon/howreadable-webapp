class Admin::DataDownloadsController < ApplicationController

  before_action :admin_only
  layout 'admin'

  def index
  end

  def show
    # download type sent in as ID for example /admin/datadownloads/participant_usage
    type = params[:id]
    csv_data = CsvData.generate type
    if csv_data
      send_data csv_data, :filename => "#{type}_#{Time.now.strftime('%Y%m%d')}.csv"
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

end
