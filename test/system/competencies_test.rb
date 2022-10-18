require "application_system_test_case"

class CompetenciesTest < ApplicationSystemTestCase
  setup do
    @competency = competencies(:one)
  end

  test "visiting the index" do
    visit competencies_url
    assert_selector "h1", text: "Competencies"
  end

  test "should create competency" do
    visit competencies_url
    click_on "New competency"

    fill_in "Industry", with: @competency.industry
    fill_in "Long desc", with: @competency.long_desc
    fill_in "Mastery1", with: @competency.mastery1
    fill_in "Mastery2", with: @competency.mastery2
    fill_in "Mastery3", with: @competency.mastery3
    fill_in "Name", with: @competency.name
    fill_in "Owner", with: @competency.owner
    fill_in "Primary class", with: @competency.primary_class
    fill_in "Secondary class", with: @competency.secondary_class
    fill_in "Short desc", with: @competency.short_desc
    click_on "Create Competency"

    assert_text "Competency was successfully created"
    click_on "Back"
  end

  test "should update Competency" do
    visit competency_url(@competency)
    click_on "Edit this competency", match: :first

    fill_in "Industry", with: @competency.industry
    fill_in "Long desc", with: @competency.long_desc
    fill_in "Mastery1", with: @competency.mastery1
    fill_in "Mastery2", with: @competency.mastery2
    fill_in "Mastery3", with: @competency.mastery3
    fill_in "Name", with: @competency.name
    fill_in "Owner", with: @competency.owner
    fill_in "Primary class", with: @competency.primary_class
    fill_in "Secondary class", with: @competency.secondary_class
    fill_in "Short desc", with: @competency.short_desc
    click_on "Update Competency"

    assert_text "Competency was successfully updated"
    click_on "Back"
  end

  test "should destroy Competency" do
    visit competency_url(@competency)
    click_on "Destroy this competency", match: :first

    assert_text "Competency was successfully destroyed"
  end
end
