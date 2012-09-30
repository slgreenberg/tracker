require 'test_helper'

class LiftingsControllerTest < ActionController::TestCase
  setup do
    @lifting = liftings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liftings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lifting" do
    assert_difference('Lifting.count') do
      post :create, lifting: { duration: @lifting.duration, exercises: @lifting.exercises, sets: @lifting.sets, total_reps: @lifting.total_reps }
    end

    assert_redirected_to lifting_path(assigns(:lifting))
  end

  test "should show lifting" do
    get :show, id: @lifting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lifting
    assert_response :success
  end

  test "should update lifting" do
    put :update, id: @lifting, lifting: { duration: @lifting.duration, exercises: @lifting.exercises, sets: @lifting.sets, total_reps: @lifting.total_reps }
    assert_redirected_to lifting_path(assigns(:lifting))
  end

  test "should destroy lifting" do
    assert_difference('Lifting.count', -1) do
      delete :destroy, id: @lifting
    end

    assert_redirected_to liftings_path
  end
end
