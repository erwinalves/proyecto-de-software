require 'test_helper'

class BoletaasControllerTest < ActionController::TestCase
  setup do
    @boletaa = boletaas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boletaas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boletaa" do
    assert_difference('Boletaa.count') do
      post :create, boletaa: { cantidad_producto: @boletaa.cantidad_producto, codigo_boleta: @boletaa.codigo_boleta, monto: @boletaa.monto, tipo_pago: @boletaa.tipo_pago, vendedor: @boletaa.vendedor }
    end

    assert_redirected_to boletaa_path(assigns(:boletaa))
  end

  test "should show boletaa" do
    get :show, id: @boletaa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boletaa
    assert_response :success
  end

  test "should update boletaa" do
    patch :update, id: @boletaa, boletaa: { cantidad_producto: @boletaa.cantidad_producto, codigo_boleta: @boletaa.codigo_boleta, monto: @boletaa.monto, tipo_pago: @boletaa.tipo_pago, vendedor: @boletaa.vendedor }
    assert_redirected_to boletaa_path(assigns(:boletaa))
  end

  test "should destroy boletaa" do
    assert_difference('Boletaa.count', -1) do
      delete :destroy, id: @boletaa
    end

    assert_redirected_to boletaas_path
  end
end
