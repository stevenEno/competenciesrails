require "test_helper"

class CompetenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competency = competencies(:one)
  end

  test "should get index" do
    get competencies_url
    assert_response :success
  end

  test "should get new" do
    get new_competency_url
    assert_response :success
  end

  test "should create competency" do
    assert_difference("Competency.count") do
      post competencies_url, params: { competency: { industry: @competency.industry, long_desc: @competency.long_desc, mastery1: @competency.mastery1, mastery2: @competency.mastery2, mastery3: @competency.mastery3, name: @competency.name, owner: @competency.owner, primary_class: @competency.primary_class, secondary_class: @competency.secondary_class, short_desc: @competency.short_desc } }
    end

    assert_redirected_to competency_url(Competency.last)
  end

  test "should show competency" do
    get competency_url(@competency)
    assert_response :success
  end

  test "should get edit" do
    get edit_competency_url(@competency)
    assert_response :success
  end

  test "should update competency" do
    patch competency_url(@competency), params: { competency: { industry: @competency.industry, long_desc: @competency.long_desc, mastery1: @competency.mastery1, mastery2: @competency.mastery2, mastery3: @competency.mastery3, name: @competency.name, owner: @competency.owner, primary_class: @competency.primary_class, secondary_class: @competency.secondary_class, short_desc: @competency.short_desc } }
    assert_redirected_to competency_url(@competency)
  end

  test "should destroy competency" do
    assert_difference("Competency.count", -1) do
      delete competency_url(@competency)
    end

    assert_redirected_to competencies_url
  end
end
