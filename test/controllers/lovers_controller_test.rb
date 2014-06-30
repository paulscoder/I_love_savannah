require 'test_helper'

class LoversControllerTest < ActionController::TestCase
  setup do
    @lover = lovers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lovers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lover" do
    assert_difference('Lover.count') do
      post :create, lover: { name: @lover.name, secret_answer: @lover.secret_answer, secret_question: @lover.secret_question }
    end

    assert_redirected_to lover_path(assigns(:lover))
  end

  test "should show lover" do
    get :show, id: @lover
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lover
    assert_response :success
  end

  test "should update lover" do
    patch :update, id: @lover, lover: { name: @lover.name, secret_answer: @lover.secret_answer, secret_question: @lover.secret_question }
    assert_redirected_to lover_path(assigns(:lover))
  end

  test "should destroy lover" do
    assert_difference('Lover.count', -1) do
      delete :destroy, id: @lover
    end

    assert_redirected_to lovers_path
  end
end
