require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "should create student" do
    visit students_url
    click_on "New student"

    fill_in "Birthday", with: @student.birthday
    fill_in "Career goal", with: @student.career_goal
    fill_in "Ikigai", with: @student.ikigai
    fill_in "Interest 1", with: @student.interest_1
    fill_in "Interest 2", with: @student.interest_2
    fill_in "Interest 3", with: @student.interest_3
    fill_in "Interest 4", with: @student.interest_4
    fill_in "Interest 5", with: @student.interest_5
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "should update Student" do
    visit student_url(@student)
    click_on "Edit this student", match: :first

    fill_in "Birthday", with: @student.birthday
    fill_in "Career goal", with: @student.career_goal
    fill_in "Ikigai", with: @student.ikigai
    fill_in "Interest 1", with: @student.interest_1
    fill_in "Interest 2", with: @student.interest_2
    fill_in "Interest 3", with: @student.interest_3
    fill_in "Interest 4", with: @student.interest_4
    fill_in "Interest 5", with: @student.interest_5
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "should destroy Student" do
    visit student_url(@student)
    click_on "Destroy this student", match: :first

    assert_text "Student was successfully destroyed"
  end
end
