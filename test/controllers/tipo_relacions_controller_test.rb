require 'test_helper'

class TipoRelacionsControllerTest < ActionController::TestCase
  setup do
    @tipo_relacion = tipo_relacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_relacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_relacion" do
    assert_difference('TipoRelacion.count') do
      post :create, tipo_relacion: {  }
    end

    assert_redirected_to tipo_relacion_path(assigns(:tipo_relacion))
  end

  test "should show tipo_relacion" do
    get :show, id: @tipo_relacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_relacion
    assert_response :success
  end

  test "should update tipo_relacion" do
    patch :update, id: @tipo_relacion, tipo_relacion: {  }
    assert_redirected_to tipo_relacion_path(assigns(:tipo_relacion))
  end

  test "should destroy tipo_relacion" do
    assert_difference('TipoRelacion.count', -1) do
      delete :destroy, id: @tipo_relacion
    end

    assert_redirected_to tipo_relacions_path
  end
end
