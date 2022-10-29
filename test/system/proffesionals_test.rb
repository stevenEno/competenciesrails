require "application_system_test_case"

class ProffesionalsTest < ApplicationSystemTestCase
  setup do
    @proffesional = proffesionals(:one)
  end

  test "visiting the index" do
    visit proffesionals_url
    assert_selector "h1", text: "Proffesionals"
  end

  test "should create proffesional" do
    visit proffesionals_url
    click_on "New proffesional"

    fill_in "Class eng", with: @proffesional.class_eng
    fill_in "Description", with: @proffesional.description
    fill_in "Industry", with: @proffesional.industry
    fill_in "Name", with: @proffesional.name
    fill_in "Proj avail", with: @proffesional.proj_avail
    fill_in "Student exp", with: @proffesional.student_exp
    fill_in "Teacher mentor", with: @proffesional.teacher_mentor
    click_on "Create Proffesional"

    assert_text "Proffesional was successfully created"
    click_on "Back"
  end

  test "should update Proffesional" do
    visit proffesional_url(@proffesional)
    click_on "Edit this proffesional", match: :first

    fill_in "Class eng", with: @proffesional.class_eng
    fill_in "Description", with: @proffesional.description
    fill_in "Industry", with: @proffesional.industry
    fill_in "Name", with: @proffesional.name
    fill_in "Proj avail", with: @proffesional.proj_avail
    fill_in "Student exp", with: @proffesional.student_exp
    fill_in "Teacher mentor", with: @proffesional.teacher_mentor
    click_on "Update Proffesional"

    assert_text "Proffesional was successfully updated"
    click_on "Back"
  end

  test "should destroy Proffesional" do
    visit proffesional_url(@proffesional)
    click_on "Destroy this proffesional", match: :first

    assert_text "Proffesional was successfully destroyed"
  end
end
