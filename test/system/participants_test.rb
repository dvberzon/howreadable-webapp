require "application_system_test_case"

class ParticipantsTest < ApplicationSystemTestCase
  setup do
    @participant = participants(:one)
  end

  test "visiting the index" do
    visit participants_url
    assert_selector "h1", text: "Participants"
  end

  test "creating a Participant" do
    visit participants_url
    click_on "New Participant"

    fill_in "Contact", with: @participant.contact
    fill_in "Language Choice", with: @participant.language_choice
    fill_in "Main Language", with: @participant.main_language
    fill_in "Years Programming", with: @participant.years_programming
    click_on "Create Participant"

    assert_text "Participant was successfully created"
    click_on "Back"
  end

  test "updating a Participant" do
    visit participants_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @participant.contact
    fill_in "Language Choice", with: @participant.language_choice
    fill_in "Main Language", with: @participant.main_language
    fill_in "Years Programming", with: @participant.years_programming
    click_on "Update Participant"

    assert_text "Participant was successfully updated"
    click_on "Back"
  end

  test "destroying a Participant" do
    visit participants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Participant was successfully destroyed"
  end
end
