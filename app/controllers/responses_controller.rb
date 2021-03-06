class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy, :skip]
  before_action :set_participant, only: [:show, :edit, :update, :skip]
  before_action  only: [:edit, :update] do
    valid_participant_only params[:participant_id]
  end

  # GET /responses/1/edit
  def edit
  end

  def show
  end

  def skip
    @response.skip
    if @response.next
      render :show
    else
      redirect_to complete_participant_test_case_path @participant, @participant.test_case(@response.test_case)
    end
  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html do
          if @response.next
            render :show
          else
            redirect_to complete_participant_test_case_path @participant, @participant.test_case(@response.test_case)
          end
        end
      else
        format.html { render :edit }
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
