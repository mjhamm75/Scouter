require 'test_helper'

class AdvancementsControllerTest < ActionController::TestCase
  setup do
    @advancement = advancements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advancements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advancement" do
    assert_difference('Advancement.count') do
      post :create, advancement: { rank: @advancement.rank, scout_id: @advancement.scout_id }
    end

    assert_redirected_to advancement_path(assigns(:advancement))
  end

  test "should show advancement" do
    get :show, id: @advancement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advancement
    assert_response :success
  end

  test "should update advancement" do
    put :update, id: @advancement, advancement: { rank: @advancement.rank, scout_id: @advancement.scout_id }
    assert_redirected_to advancement_path(assigns(:advancement))
  end

  test "should destroy advancement" do
    assert_difference('Advancement.count', -1) do
      delete :destroy, id: @advancement
    end

    assert_redirected_to advancements_path
  end
end
