require "test_helper"

class AnnualCropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @annual_crop = annual_crops(:one)
  end

  test "should get index" do
    get annual_crops_url
    assert_response :success
  end

  test "should get new" do
    get new_annual_crop_url
    assert_response :success
  end

  test "should create annual_crop" do
    assert_difference("AnnualCrop.count") do
      post annual_crops_url, params: { annual_crop: { annual_crop_field: @annual_crop.annual_crop_field, annual_crop_last_year: @annual_crop.annual_crop_last_year, annual_crop_last_year_organic: @annual_crop.annual_crop_last_year_organic, annual_crop_organic: @annual_crop.annual_crop_organic, annual_crop_this_year: @annual_crop.annual_crop_this_year, annual_crop_two_years_ago: @annual_crop.annual_crop_two_years_ago, annual_crop_two_years_ago_organic: @annual_crop.annual_crop_two_years_ago_organic, anual_crop_acre: @annual_crop.anual_crop_acre } }
    end

    assert_redirected_to annual_crop_url(AnnualCrop.last)
  end

  test "should show annual_crop" do
    get annual_crop_url(@annual_crop)
    assert_response :success
  end

  test "should get edit" do
    get edit_annual_crop_url(@annual_crop)
    assert_response :success
  end

  test "should update annual_crop" do
    patch annual_crop_url(@annual_crop), params: { annual_crop: { annual_crop_field: @annual_crop.annual_crop_field, annual_crop_last_year: @annual_crop.annual_crop_last_year, annual_crop_last_year_organic: @annual_crop.annual_crop_last_year_organic, annual_crop_organic: @annual_crop.annual_crop_organic, annual_crop_this_year: @annual_crop.annual_crop_this_year, annual_crop_two_years_ago: @annual_crop.annual_crop_two_years_ago, annual_crop_two_years_ago_organic: @annual_crop.annual_crop_two_years_ago_organic, anual_crop_acre: @annual_crop.anual_crop_acre } }
    assert_redirected_to annual_crop_url(@annual_crop)
  end

  test "should destroy annual_crop" do
    assert_difference("AnnualCrop.count", -1) do
      delete annual_crop_url(@annual_crop)
    end

    assert_redirected_to annual_crops_url
  end
end
