require 'test_helper'

class TipoEntradasControllerTest < ActionController::TestCase
  setup do
    @tipo_entrada = tipo_entradas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_entradas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_entrada" do
    assert_difference('TipoEntrada.count') do
      post :create, tipo_entrada: {  }
    end

    assert_redirected_to tipo_entrada_path(assigns(:tipo_entrada))
  end

  test "should show tipo_entrada" do
    get :show, id: @tipo_entrada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_entrada
    assert_response :success
  end

  test "should update tipo_entrada" do
    patch :update, id: @tipo_entrada, tipo_entrada: {  }
    assert_redirected_to tipo_entrada_path(assigns(:tipo_entrada))
  end

  test "should destroy tipo_entrada" do
    assert_difference('TipoEntrada.count', -1) do
      delete :destroy, id: @tipo_entrada
    end

    assert_redirected_to tipo_entradas_path
  end
end
