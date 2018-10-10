class Admin::ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :destroy]
  before_action :admin_only
  layout 'admin'

  # GET /participants
  # GET /participants.json
  def index
    @participants = Participant.includes(:responses).order(:id)
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    @num_snippets = @participant.responses.length || 0
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to admin_participants_url, notice: 'Participant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find(params[:id])
    end

end
