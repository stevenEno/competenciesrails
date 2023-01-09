require "test_helper"

class AdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin = admins(:one)
  end

  test "should get index" do
    get admins_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_url
    assert_response :success
  end

  test "should create admin" do
    assert_difference("Admin.count") do
      post admins_url, params: { admin: { birthday: @admin.birthday, ikigai: @admin.ikigai, interest_1: @admin.interest_1, interest_2: @admin.interest_2, interest_3: @admin.interest_3, interest_4: @admin.interest_4, interest_5: @admin.interest_5, school: @admin.school, school_goal_1: @admin.school_goal_1, school_goal_2: @admin.school_goal_2, school_goal_3: @admin.school_goal_3 } }
    end

    assert_redirected_to admin_url(Admin.last)
  end

  test "should show admin" do
    get admin_url(@admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_url(@admin)
    assert_response :success
  end

  test "should update admin" do
    patch admin_url(@admin), params: { admin: { birthday: @admin.birthday, ikigai: @admin.ikigai, interest_1: @admin.interest_1, interest_2: @admin.interest_2, interest_3: @admin.interest_3, interest_4: @admin.interest_4, interest_5: @admin.interest_5, school: @admin.school, school_goal_1: @admin.school_goal_1, school_goal_2: @admin.school_goal_2, school_goal_3: @admin.school_goal_3 } }
    assert_redirected_to admin_url(@admin)
  end

  test "should destroy admin" do
    assert_difference("Admin.count", -1) do
      delete admin_url(@admin)
    end

    assert_redirected_to admins_url
  end
end
