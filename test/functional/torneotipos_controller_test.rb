require 'test_helper'

class TorneotiposControllerTest < ActionController::TestCase
  setup do
    @torneotipo = torneotipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:torneotipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create torneotipo" do
    assert_difference('Torneotipo.count') do
      post :create, torneotipo: { nombre: @torneotipo.nombre }
    end

    assert_redirected_to torneotipo_path(assigns(:torneotipo))
  end

  test "should show torneotipo" do
    get :show, id: @torneotipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @torneotipo
    assert_response :success
  end

  test "should update torneotipo" do
    put :update, id: @torneotipo, torneotipo: { nombre: @torneotipo.nombre }
    assert_redirected_to torneotipo_path(assigns(:torneotipo))
  end

  test "should destroy torneotipo" do
    assert_difference('Torneotipo.count', -1) do
      delete :destroy, id: @torneotipo
    end

    assert_redirected_to torneotipos_path
  end
end
