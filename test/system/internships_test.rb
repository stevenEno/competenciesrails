require "application_system_test_case"

class InternshipsTest < ApplicationSystemTestCase
  setup do
    @internship = internships(:one)
  end

  test "visiting the index" do
    visit internships_url
    assert_selector "h1", text: "Internships"
  end

  test "should create internship" do
    visit internships_url
    click_on "New internship"

    fill_in "Application link", with: @internship.application_link
    fill_in "Company", with: @internship.company
    fill_in "Contact", with: @internship.contact
    fill_in "Description", with: @internship.description
    fill_in "End date", with: @internship.end_date
    fill_in "Industry", with: @internship.industry
    fill_in "Name", with: @internship.name
    fill_in "Start date", with: @internship.start_date
    click_on "Create Internship"

    assert_text "Internship was successfully created"
    click_on "Back"
  end

  test "should update Internship" do
    visit internship_url(@internship)
    click_on "Edit this internship", match: :first

    fill_in "Application link", with: @internship.application_link
    fill_in "Company", with: @internship.company
    fill_in "Contact", with: @internship.contact
    fill_in "Description", with: @internship.description
    fill_in "End date", with: @internship.end_date
    fill_in "Industry", with: @internship.industry
    fill_in "Name", with: @internship.name
    fill_in "Start date", with: @internship.start_date
    click_on "Update Internship"

    assert_text "Internship was successfully updated"
    click_on "Back"
  end

  test "should destroy Internship" do
    visit internship_url(@internship)
    click_on "Destroy this internship", match: :first

    assert_text "Internship was successfully destroyed"
  end
end
