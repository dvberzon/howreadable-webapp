class Admin::RandomisationsController < ApplicationController
  before_action :admin_only
  layout 'admin'

  def index
    @sequences = Randomisation::RandomSequence.includes(:random_sequence_entries).all
  end

  def show
    @sequence = Randomisation::RandomSequence.find(params[:id])
    @entries = @sequence.random_sequence_entries.paginate(:page => params[:page])
  end

  def generate
    @sequence = Randomisation::RandomSequence.find(params[:id])
    @sequence.generate_entries 100
    redirect_to [:admin, :randomisations]
  end

end
