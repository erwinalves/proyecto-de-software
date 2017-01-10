require 'test_helper'

class BoletaControllerTest < ActionController::TestCase
  setup do
    @boletum = boleta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boleta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boletum" do
    assert_difference('Boletum.count') do
      post :create, boletum: { cantidad_producto: @boletum.cantidad_producto, id: @boletum.id, tipo_pago: @boletum.tipo_pago, valor_total: @boletum.valor_total, vendedor: @boletum.vendedor }
    end

    assert_redirected_to boletum_path(assigns(:boletum))
  end

  test "should show boletum" do
    get :show, id: @boletum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boletum
    assert_response :success
  end

  test "should update boletum" do
    patch :update, id: @boletum, boletum: { cantidad_producto: @boletum.cantidad_producto, id: @boletum.id, tipo_pago: @boletum.tipo_pago, valor_total: @boletum.valor_total, vendedor: @boletum.vendedor }
    assert_redirected_to boletum_path(assigns(:boletum))
  end

  test "should destroy boletum" do
    assert_difference('Boletum.count', -1) do
      delete :destroy, id: @boletum
    end

    assert_redirected_to boleta_path
  end
end
