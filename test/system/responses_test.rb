require "application_system_test_case"

class ResponsesTest < ApplicationSystemTestCase
  setup do
    @response = responses(:one)
  end

  test "visiting the index" do
    visit responses_url
    assert_selector "h1", text: "Responses"
  end

  test "creating a Response" do
    visit responses_url
    click_on "New Response"

    fill_in "Comments", with: @response.comments
    fill_in "Example", with: @response.example
    fill_in "Given Answer", with: @response.given_answer
    fill_in "Participants", with: @response.participants_id
    fill_in "Readable Score", with: @response.readable_score
    fill_in "Responded Ms", with: @response.responded_ms
    fill_in "Test Case", with: @response.test_case
    click_on "Create Response"

    assert_text "Response was successfully created"
    click_on "Back"
  end

  test "updating a Response" do
    visit responses_url
    click_on "Edit", match: :first

    fill_in "Comments", with: @response.comments
    fill_in "Example", with: @response.example
    fill_in "Given Answer", with: @response.given_answer
    fill_in "Participants", with: @response.participants_id
    fill_in "Readable Score", with: @response.readable_score
    fill_in "Responded Ms", with: @response.responded_ms
    fill_in "Test Case", with: @response.test_case
    click_on "Update Response"

    assert_text "Response was successfully updated"
    click_on "Back"
  end

  test "destroying a Response" do
    visit responses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Response was successfully destroyed"
  end
end
