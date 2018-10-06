class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]
  before_action :set_participant, only: [:edit, :update]

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
            redirect_to thankyou_path
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
      params.require(:response).permit(:test_case, :example, :participants_id, :responded_ms, :given_answer, :readable_score, :comments)
    end
end
