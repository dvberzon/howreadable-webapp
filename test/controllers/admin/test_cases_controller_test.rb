require 'test_helper'

class Admin::TestCasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_test_cases_index_url
    assert_response :success
  end

end
