require 'test_helper'

class RatioOfVarietiesControllerTest < ActionController::TestCase
  setup do
    @ratio_of_variety = ratio_of_varieties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ratio_of_varieties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ratio_of_variety" do
    assert_difference('RatioOfVariety.count') do
      post :create, ratio_of_variety: { grape_sort_id: @ratio_of_variety.grape_sort_id, ratio: @ratio_of_variety.ratio, wine_sort_id: @ratio_of_variety.wine_sort_id }
    end

    assert_redirected_to ratio_of_variety_path(assigns(:ratio_of_variety))
  end

  test "should show ratio_of_variety" do
    get :show, id: @ratio_of_variety
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ratio_of_variety
    assert_response :success
  end

  test "should update ratio_of_variety" do
    patch :update, id: @ratio_of_variety, ratio_of_variety: { grape_sort_id: @ratio_of_variety.grape_sort_id, ratio: @ratio_of_variety.ratio, wine_sort_id: @ratio_of_variety.wine_sort_id }
    assert_redirected_to ratio_of_variety_path(assigns(:ratio_of_variety))
  end

  test "should destroy ratio_of_variety" do
    assert_difference('RatioOfVariety.count', -1) do
      delete :destroy, id: @ratio_of_variety
    end

    assert_redirected_to ratio_of_varieties_path
  end
end
