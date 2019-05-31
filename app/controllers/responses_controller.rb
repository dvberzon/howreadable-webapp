class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]
  before_action :set_participant, only: [:edit, :update]
  before_action  only: [:edit, :update] do
    session_participant_only params[:participant_id]
  end

  # GET /responses/1/edit
  def edit
  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html do
          if @response.next
            redirect_to edit_participant_response_path @participant, @response.next
          else
            redirect_to complete_participant_test_case_path @participant, @participant.test_case(@response.test_case)
          end
        end
        format.json { render :show, status: :ok, location: @response }
      else
        format.html { render :edit }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    def set_participant
      @participant = Participant.find(params[:participant_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params.require(:response)
        .permit(:responded_ms, :given_answer)
        .with_defaults(responded: true)
    end
end
