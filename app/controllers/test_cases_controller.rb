class TestCasesController < ApplicationController
  before_action :set_participant
  before_action :set_participant_test_case, only: [:show, :complete]
  before_action do
    valid_participant_only params[:participant_id]
  end

  def new
    @participant.start_next_test_case
    redirect_to participant_test_case_path @participant, @participant.current_test_case
  end

  def show
  end

  def complete
    @participant_test_case.complete
    @num_available = @participant.num_available_test_cases
    if @num_available == 0
      redirect_to thankyou_path
    end
  end

  private
    def set_participant
      @participant = Participant.find(params[:participant_id])
    end

    def set_participant_test_case
      @participant_test_case = ParticipantTestCase.find(params[:id])
    end
end
