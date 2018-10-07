class Admin::RandomisationsController < ApplicationController
  before_action :admin_only
  layout 'admin'

  def index
    @sequences = Randomisation::RandomSequence.includes(:random_sequence_entries).all
  end

  def show
    @sequence = Randomisation::RandomSequence.find(params[:id])
  end

end
