require "application_system_test_case"

class PermanentCropsTest < ApplicationSystemTestCase
  setup do
    @permanent_crop = permanent_crops(:one)
  end

  test "visiting the index" do
    visit permanent_crops_url
    assert_selector "h1", text: "Permanent crops"
  end

  test "should create permanent crop" do
    visit permanent_crops_url
    click_on "New permanent crop"

    fill_in "Acres", with: @permanent_crop.acres
    fill_in "Crop", with: @permanent_crop.crop_id
    fill_in "Date planted", with: @permanent_crop.date_planted
    fill_in "Estimated yield", with: @permanent_crop.estimated_yield
    fill_in "Field name", with: @permanent_crop.field_name
    fill_in "Last chemical", with: @permanent_crop.last_chemical
    fill_in "Number of trees", with: @permanent_crop.number_of_trees
    check "Organic" if @permanent_crop.organic
    click_on "Create Permanent crop"

    assert_text "Permanent crop was successfully created"
    click_on "Back"
  end

  test "should update Permanent crop" do
    visit permanent_crop_url(@permanent_crop)
    click_on "Edit this permanent crop", match: :first

    fill_in "Acres", with: @permanent_crop.acres
    fill_in "Crop", with: @permanent_crop.crop_id
    fill_in "Date planted", with: @permanent_crop.date_planted
    fill_in "Estimated yield", with: @permanent_crop.estimated_yield
    fill_in "Field name", with: @permanent_crop.field_name
    fill_in "Last chemical", with: @permanent_crop.last_chemical
    fill_in "Number of trees", with: @permanent_crop.number_of_trees
    check "Organic" if @permanent_crop.organic
    click_on "Update Permanent crop"

    assert_text "Permanent crop was successfully updated"
    click_on "Back"
  end

  test "should destroy Permanent crop" do
    visit permanent_crop_url(@permanent_crop)
    click_on "Destroy this permanent crop", match: :first

    assert_text "Permanent crop was successfully destroyed"
  end
end
