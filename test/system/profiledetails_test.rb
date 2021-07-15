require "application_system_test_case"

class ProfiledetailsTest < ApplicationSystemTestCase
  setup do
    @profiledetail = profiledetails(:one)
  end

  test "visiting the index" do
    visit profiledetails_url
    assert_selector "h1", text: "Profiledetails"
  end

  test "creating a Profiledetail" do
    visit profiledetails_url
    click_on "New Profiledetail"

    fill_in "Education", with: @profiledetail.education
    fill_in "Experience", with: @profiledetail.experience
    fill_in "First name", with: @profiledetail.first_name
    fill_in "Last name", with: @profiledetail.last_name
    fill_in "Resume", with: @profiledetail.resume
    click_on "Create Profiledetail"

    assert_text "Profiledetail was successfully created"
    click_on "Back"
  end

  test "updating a Profiledetail" do
    visit profiledetails_url
    click_on "Edit", match: :first

    fill_in "Education", with: @profiledetail.education
    fill_in "Experience", with: @profiledetail.experience
    fill_in "First name", with: @profiledetail.first_name
    fill_in "Last name", with: @profiledetail.last_name
    fill_in "Resume", with: @profiledetail.resume
    click_on "Update Profiledetail"

    assert_text "Profiledetail was successfully updated"
    click_on "Back"
  end

  test "destroying a Profiledetail" do
    visit profiledetails_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profiledetail was successfully destroyed"
  end
end
