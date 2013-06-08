require 'test_helper'

class NameHasAccessPointsControllerTest < ActionController::TestCase
  setup do
    @name_has_access_point = name_has_access_points(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:name_has_access_points)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create name_has_access_point" do
    assert_difference('NameHasAccessPoint.count') do
      post :create, name_has_access_point: { controlled_access_point_id: @name_has_access_point.controlled_access_point_id, name_id: @name_has_access_point.name_id }
    end

    assert_redirected_to name_has_access_point_path(assigns(:name_has_access_point))
  end

  test "should show name_has_access_point" do
    get :show, id: @name_has_access_point
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @name_has_access_point
    assert_response :success
  end

  test "should update name_has_access_point" do
    put :update, id: @name_has_access_point, name_has_access_point: { controlled_access_point_id: @name_has_access_point.controlled_access_point_id, name_id: @name_has_access_point.name_id }
    assert_redirected_to name_has_access_point_path(assigns(:name_has_access_point))
  end

  test "should destroy name_has_access_point" do
    assert_difference('NameHasAccessPoint.count', -1) do
      delete :destroy, id: @name_has_access_point
    end

    assert_redirected_to name_has_access_points_path
  end
end
