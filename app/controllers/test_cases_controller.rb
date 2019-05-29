class TestCasesController < ApplicationController
  before_action :set_participant, only: [:new, :show]
  before_action  only: [:new, :show] do
    session_participant_only params[:participant_id]
  end

  def new
    @participant.start_next_test_case
    redirect_to participant_test_case_path @participant, @participant.current_test_case
  end

  def show
    @participant_test_case = @participant.current_test_case
  end

  private
    def set_participant
      @participant = Participant.find(params[:participant_id])
    end

    def set_participant_test_case
      @participant_test_case = ParticipantTestCase.find[:test_case_id]
    end
end
