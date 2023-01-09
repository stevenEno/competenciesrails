require "test_helper"

class TeachersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher = teachers(:one)
  end

  test "should get index" do
    get teachers_url
    assert_response :success
  end

  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

  test "should create teacher" do
    assert_difference("Teacher.count") do
      post teachers_url, params: { teacher: { alma_mater: @teacher.alma_mater, birthday: @teacher.birthday, eks_1: @teacher.eks_1, eks_2: @teacher.eks_2, eks_3: @teacher.eks_3, eks_4: @teacher.eks_4, eks_5: @teacher.eks_5, eks_6: @teacher.eks_6, eks_7: @teacher.eks_7, eks_8: @teacher.eks_8, eks_9: @teacher.eks_9, ikigai: @teacher.ikigai, interest_1: @teacher.interest_1, interest_2: @teacher.interest_2, interest_3: @teacher.interest_3, interest_4: @teacher.interest_4, interest_5: @teacher.interest_5, is_CTE: @teacher.is_CTE } }
    end

    assert_redirected_to teacher_url(Teacher.last)
  end

  test "should show teacher" do
    get teacher_url(@teacher)
    assert_response :success
  end

  test "should get edit" do
    get edit_teacher_url(@teacher)
    assert_response :success
  end

  test "should update teacher" do
    patch teacher_url(@teacher), params: { teacher: { alma_mater: @teacher.alma_mater, birthday: @teacher.birthday, eks_1: @teacher.eks_1, eks_2: @teacher.eks_2, eks_3: @teacher.eks_3, eks_4: @teacher.eks_4, eks_5: @teacher.eks_5, eks_6: @teacher.eks_6, eks_7: @teacher.eks_7, eks_8: @teacher.eks_8, eks_9: @teacher.eks_9, ikigai: @teacher.ikigai, interest_1: @teacher.interest_1, interest_2: @teacher.interest_2, interest_3: @teacher.interest_3, interest_4: @teacher.interest_4, interest_5: @teacher.interest_5, is_CTE: @teacher.is_CTE } }
    assert_redirected_to teacher_url(@teacher)
  end

  test "should destroy teacher" do
    assert_difference("Teacher.count", -1) do
      delete teacher_url(@teacher)
    end

    assert_redirected_to teachers_url
  end
end
