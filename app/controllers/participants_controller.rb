class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show]
  before_action  only: [:show] do
    valid_participant_only params[:id]
  end
  
  # GET /participants/1
  # GET /participants/1.json
  def show
    @num_snippets = @participant.responses.length || 0
  end

  # GET /participants/new
  def new
    @participant = Participant.new(language_choice: params[:lang])
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(participant_params)
    @participant.agent = request.user_agent
    @participant.ip = request.remote_ip
    respond_to do |format|
      if @participant.save
        format.html { redirect_to @participant }
        format.json { render :show, status: :created, location: @participant }
      else
        format.html { render :new }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_params
      params.require(:participant).permit(:main_language, :years_programming, :language_choice, :client_w, :client_h)
    end
end
