require 'test_helper'

class ResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @response = responses(:one)
  end

  test "should get index" do
    get responses_url
    assert_response :success
  end

  test "should get new" do
    get new_response_url
    assert_response :success
  end

  test "should create response" do
    assert_difference('Response.count') do
      post responses_url, params: { response: { comments: @response.comments, example: @response.example, given_answer: @response.given_answer, participants_id: @response.participants_id, readable_score: @response.readable_score, responded_ms: @response.responded_ms, test_case: @response.test_case } }
    end

    assert_redirected_to response_url(Response.last)
  end

  test "should show response" do
    get response_url(@response)
    assert_response :success
  end

  test "should get edit" do
    get edit_response_url(@response)
    assert_response :success
  end

  test "should update response" do
    patch response_url(@response), params: { response: { comments: @response.comments, example: @response.example, given_answer: @response.given_answer, participants_id: @response.participants_id, readable_score: @response.readable_score, responded_ms: @response.responded_ms, test_case: @response.test_case } }
    assert_redirected_to response_url(@response)
  end

  test "should destroy response" do
    assert_difference('Response.count', -1) do
      delete response_url(@response)
    end

    assert_redirected_to responses_url
  end
end
