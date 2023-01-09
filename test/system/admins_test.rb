require "application_system_test_case"

class AdminsTest < ApplicationSystemTestCase
  setup do
    @admin = admins(:one)
  end

  test "visiting the index" do
    visit admins_url
    assert_selector "h1", text: "Admins"
  end

  test "should create admin" do
    visit admins_url
    click_on "New admin"

    fill_in "Birthday", with: @admin.birthday
    fill_in "Ikigai", with: @admin.ikigai
    fill_in "Interest 1", with: @admin.interest_1
    fill_in "Interest 2", with: @admin.interest_2
    fill_in "Interest 3", with: @admin.interest_3
    fill_in "Interest 4", with: @admin.interest_4
    fill_in "Interest 5", with: @admin.interest_5
    fill_in "School", with: @admin.school
    fill_in "School goal 1", with: @admin.school_goal_1
    fill_in "School goal 2", with: @admin.school_goal_2
    fill_in "School goal 3", with: @admin.school_goal_3
    click_on "Create Admin"

    assert_text "Admin was successfully created"
    click_on "Back"
  end

  test "should update Admin" do
    visit admin_url(@admin)
    click_on "Edit this admin", match: :first

    fill_in "Birthday", with: @admin.birthday
    fill_in "Ikigai", with: @admin.ikigai
    fill_in "Interest 1", with: @admin.interest_1
    fill_in "Interest 2", with: @admin.interest_2
    fill_in "Interest 3", with: @admin.interest_3
    fill_in "Interest 4", with: @admin.interest_4
    fill_in "Interest 5", with: @admin.interest_5
    fill_in "School", with: @admin.school
    fill_in "School goal 1", with: @admin.school_goal_1
    fill_in "School goal 2", with: @admin.school_goal_2
    fill_in "School goal 3", with: @admin.school_goal_3
    click_on "Update Admin"

    assert_text "Admin was successfully updated"
    click_on "Back"
  end

  test "should destroy Admin" do
    visit admin_url(@admin)
    click_on "Destroy this admin", match: :first

    assert_text "Admin was successfully destroyed"
  end
end
