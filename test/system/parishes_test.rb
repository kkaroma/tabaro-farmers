require "application_system_test_case"

class ParishesTest < ApplicationSystemTestCase
  setup do
    @parish = parishes(:one)
  end

  test "visiting the index" do
    visit parishes_url
    assert_selector "h1", text: "Parishes"
  end

  test "should create parish" do
    visit parishes_url
    click_on "New parish"

    fill_in "Name", with: @parish.name
    click_on "Create Parish"

    assert_text "Parish was successfully created"
    click_on "Back"
  end

  test "should update Parish" do
    visit parish_url(@parish)
    click_on "Edit this parish", match: :first

    fill_in "Name", with: @parish.name
    click_on "Update Parish"

    assert_text "Parish was successfully updated"
    click_on "Back"
  end

  test "should destroy Parish" do
    visit parish_url(@parish)
    click_on "Destroy this parish", match: :first

    assert_text "Parish was successfully destroyed"
  end
end
