require "application_system_test_case"

class AnnualCropsTest < ApplicationSystemTestCase
  setup do
    @annual_crop = annual_crops(:one)
  end

  test "visiting the index" do
    visit annual_crops_url
    assert_selector "h1", text: "Annual crops"
  end

  test "should create annual crop" do
    visit annual_crops_url
    click_on "New annual crop"

    fill_in "Annual crop field", with: @annual_crop.annual_crop_field
    fill_in "Annual crop last year", with: @annual_crop.annual_crop_last_year
    check "Annual crop last year organic" if @annual_crop.annual_crop_last_year_organic
    fill_in "Annual crop organic", with: @annual_crop.annual_crop_organic
    fill_in "Annual crop this year", with: @annual_crop.annual_crop_this_year
    fill_in "Annual crop two years ago", with: @annual_crop.annual_crop_two_years_ago
    fill_in "Annual crop two years ago organic", with: @annual_crop.annual_crop_two_years_ago_organic
    fill_in "Anual crop acre", with: @annual_crop.anual_crop_acre
    click_on "Create Annual crop"

    assert_text "Annual crop was successfully created"
    click_on "Back"
  end

  test "should update Annual crop" do
    visit annual_crop_url(@annual_crop)
    click_on "Edit this annual crop", match: :first

    fill_in "Annual crop field", with: @annual_crop.annual_crop_field
    fill_in "Annual crop last year", with: @annual_crop.annual_crop_last_year
    check "Annual crop last year organic" if @annual_crop.annual_crop_last_year_organic
    fill_in "Annual crop organic", with: @annual_crop.annual_crop_organic
    fill_in "Annual crop this year", with: @annual_crop.annual_crop_this_year
    fill_in "Annual crop two years ago", with: @annual_crop.annual_crop_two_years_ago
    fill_in "Annual crop two years ago organic", with: @annual_crop.annual_crop_two_years_ago_organic
    fill_in "Anual crop acre", with: @annual_crop.anual_crop_acre
    click_on "Update Annual crop"

    assert_text "Annual crop was successfully updated"
    click_on "Back"
  end

  test "should destroy Annual crop" do
    visit annual_crop_url(@annual_crop)
    click_on "Destroy this annual crop", match: :first

    assert_text "Annual crop was successfully destroyed"
  end
end
