require 'test_helper'

class ControlledAccessPointsControllerTest < ActionController::TestCase
  setup do
    @controlled_access_point = controlled_access_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controlled_access_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controlled_access_point" do
    assert_difference('ControlledAccessPoint.count') do
      post :create, controlled_access_point: { base_access_point: @controlled_access_point.base_access_point, language_of_base_access_point: @controlled_access_point.language_of_base_access_point, source_of_controlled_access_point: @controlled_access_point.source_of_controlled_access_point, type_of_controlled_access_point: @controlled_access_point.type_of_controlled_access_point }
    end

    assert_redirected_to controlled_access_point_path(assigns(:controlled_access_point))
  end

  test "should show controlled_access_point" do
    get :show, id: @controlled_access_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controlled_access_point
    assert_response :success
  end

  test "should update controlled_access_point" do
    put :update, id: @controlled_access_point, controlled_access_point: { base_access_point: @controlled_access_point.base_access_point, language_of_base_access_point: @controlled_access_point.language_of_base_access_point, source_of_controlled_access_point: @controlled_access_point.source_of_controlled_access_point, type_of_controlled_access_point: @controlled_access_point.type_of_controlled_access_point }
    assert_redirected_to controlled_access_point_path(assigns(:controlled_access_point))
  end

  test "should destroy controlled_access_point" do
    assert_difference('ControlledAccessPoint.count', -1) do
      delete :destroy, id: @controlled_access_point
    end

    assert_redirected_to controlled_access_points_path
  end
end
