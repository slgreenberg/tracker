require 'test_helper'

class ClassTakensControllerTest < ActionController::TestCase
  setup do
    @class_taken = class_takens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_takens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_taken" do
    assert_difference('ClassTaken.count') do
      post :create, class_taken: { duration: @class_taken.duration, equipment_used: @class_taken.equipment_used, name: @class_taken.name }
    end

    assert_redirected_to class_taken_path(assigns(:class_taken))
  end

  test "should show class_taken" do
    get :show, id: @class_taken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_taken
    assert_response :success
  end

  test "should update class_taken" do
    put :update, id: @class_taken, class_taken: { duration: @class_taken.duration, equipment_used: @class_taken.equipment_used, name: @class_taken.name }
    assert_redirected_to class_taken_path(assigns(:class_taken))
  end

  test "should destroy class_taken" do
    assert_difference('ClassTaken.count', -1) do
      delete :destroy, id: @class_taken
    end

    assert_redirected_to class_takens_path
  end
end
