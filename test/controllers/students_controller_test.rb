require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { birthday: @student.birthday, career_goal: @student.career_goal, ikigai: @student.ikigai, interest_1: @student.interest_1, interest_2: @student.interest_2, interest_3: @student.interest_3, interest_4: @student.interest_4, interest_5: @student.interest_5 } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { birthday: @student.birthday, career_goal: @student.career_goal, ikigai: @student.ikigai, interest_1: @student.interest_1, interest_2: @student.interest_2, interest_3: @student.interest_3, interest_4: @student.interest_4, interest_5: @student.interest_5 } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
