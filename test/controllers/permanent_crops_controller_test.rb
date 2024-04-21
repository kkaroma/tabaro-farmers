require "test_helper"

class PermanentCropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permanent_crop = permanent_crops(:one)
  end

  test "should get index" do
    get permanent_crops_url
    assert_response :success
  end

  test "should get new" do
    get new_permanent_crop_url
    assert_response :success
  end

  test "should create permanent_crop" do
    assert_difference("PermanentCrop.count") do
      post permanent_crops_url, params: { permanent_crop: { acres: @permanent_crop.acres, crop_id: @permanent_crop.crop_id, date_planted: @permanent_crop.date_planted, estimated_yield: @permanent_crop.estimated_yield, field_name: @permanent_crop.field_name, last_chemical: @permanent_crop.last_chemical, number_of_trees: @permanent_crop.number_of_trees, organic: @permanent_crop.organic } }
    end

    assert_redirected_to permanent_crop_url(PermanentCrop.last)
  end

  test "should show permanent_crop" do
    get permanent_crop_url(@permanent_crop)
    assert_response :success
  end

  test "should get edit" do
    get edit_permanent_crop_url(@permanent_crop)
    assert_response :success
  end

  test "should update permanent_crop" do
    patch permanent_crop_url(@permanent_crop), params: { permanent_crop: { acres: @permanent_crop.acres, crop_id: @permanent_crop.crop_id, date_planted: @permanent_crop.date_planted, estimated_yield: @permanent_crop.estimated_yield, field_name: @permanent_crop.field_name, last_chemical: @permanent_crop.last_chemical, number_of_trees: @permanent_crop.number_of_trees, organic: @permanent_crop.organic } }
    assert_redirected_to permanent_crop_url(@permanent_crop)
  end

  test "should destroy permanent_crop" do
    assert_difference("PermanentCrop.count", -1) do
      delete permanent_crop_url(@permanent_crop)
    end

    assert_redirected_to permanent_crops_url
  end
end
