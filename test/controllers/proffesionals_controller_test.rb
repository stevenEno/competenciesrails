require "test_helper"

class ProffesionalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proffesional = proffesionals(:one)
  end

  test "should get index" do
    get proffesionals_url
    assert_response :success
  end

  test "should get new" do
    get new_proffesional_url
    assert_response :success
  end

  test "should create proffesional" do
    assert_difference("Proffesional.count") do
      post proffesionals_url, params: { proffesional: { class_eng: @proffesional.class_eng, description: @proffesional.description, industry: @proffesional.industry, name: @proffesional.name, proj_avail: @proffesional.proj_avail, student_exp: @proffesional.student_exp, teacher_mentor: @proffesional.teacher_mentor } }
    end

    assert_redirected_to proffesional_url(Proffesional.last)
  end

  test "should show proffesional" do
    get proffesional_url(@proffesional)
    assert_response :success
  end

  test "should get edit" do
    get edit_proffesional_url(@proffesional)
    assert_response :success
  end

  test "should update proffesional" do
    patch proffesional_url(@proffesional), params: { proffesional: { class_eng: @proffesional.class_eng, description: @proffesional.description, industry: @proffesional.industry, name: @proffesional.name, proj_avail: @proffesional.proj_avail, student_exp: @proffesional.student_exp, teacher_mentor: @proffesional.teacher_mentor } }
    assert_redirected_to proffesional_url(@proffesional)
  end

  test "should destroy proffesional" do
    assert_difference("Proffesional.count", -1) do
      delete proffesional_url(@proffesional)
    end

    assert_redirected_to proffesionals_url
  end
end
