class Admin::TestCasesController < ApplicationController
  before_action :set_test_case, only: [:show]
  before_action :admin_only
  layout 'admin'

  def index
    @test_case = Experiment.test_cases.first
    render 'show'
  end

  def show
  end

  private
    def set_test_case
      @test_case = TestCase.find params[:id]
    end
end
