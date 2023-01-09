require "application_system_test_case"

class TeachersTest < ApplicationSystemTestCase
  setup do
    @teacher = teachers(:one)
  end

  test "visiting the index" do
    visit teachers_url
    assert_selector "h1", text: "Teachers"
  end

  test "should create teacher" do
    visit teachers_url
    click_on "New teacher"

    fill_in "Alma mater", with: @teacher.alma_mater
    fill_in "Birthday", with: @teacher.birthday
    fill_in "Eks 1", with: @teacher.eks_1
    fill_in "Eks 2", with: @teacher.eks_2
    fill_in "Eks 3", with: @teacher.eks_3
    fill_in "Eks 4", with: @teacher.eks_4
    fill_in "Eks 5", with: @teacher.eks_5
    fill_in "Eks 6", with: @teacher.eks_6
    fill_in "Eks 7", with: @teacher.eks_7
    fill_in "Eks 8", with: @teacher.eks_8
    fill_in "Eks 9", with: @teacher.eks_9
    fill_in "Ikigai", with: @teacher.ikigai
    fill_in "Interest 1", with: @teacher.interest_1
    fill_in "Interest 2", with: @teacher.interest_2
    fill_in "Interest 3", with: @teacher.interest_3
    fill_in "Interest 4", with: @teacher.interest_4
    fill_in "Interest 5", with: @teacher.interest_5
    check "Is cte" if @teacher.is_CTE
    click_on "Create Teacher"

    assert_text "Teacher was successfully created"
    click_on "Back"
  end

  test "should update Teacher" do
    visit teacher_url(@teacher)
    click_on "Edit this teacher", match: :first

    fill_in "Alma mater", with: @teacher.alma_mater
    fill_in "Birthday", with: @teacher.birthday
    fill_in "Eks 1", with: @teacher.eks_1
    fill_in "Eks 2", with: @teacher.eks_2
    fill_in "Eks 3", with: @teacher.eks_3
    fill_in "Eks 4", with: @teacher.eks_4
    fill_in "Eks 5", with: @teacher.eks_5
    fill_in "Eks 6", with: @teacher.eks_6
    fill_in "Eks 7", with: @teacher.eks_7
    fill_in "Eks 8", with: @teacher.eks_8
    fill_in "Eks 9", with: @teacher.eks_9
    fill_in "Ikigai", with: @teacher.ikigai
    fill_in "Interest 1", with: @teacher.interest_1
    fill_in "Interest 2", with: @teacher.interest_2
    fill_in "Interest 3", with: @teacher.interest_3
    fill_in "Interest 4", with: @teacher.interest_4
    fill_in "Interest 5", with: @teacher.interest_5
    check "Is cte" if @teacher.is_CTE
    click_on "Update Teacher"

    assert_text "Teacher was successfully updated"
    click_on "Back"
  end

  test "should destroy Teacher" do
    visit teacher_url(@teacher)
    click_on "Destroy this teacher", match: :first

    assert_text "Teacher was successfully destroyed"
  end
end
