require 'test_helper'

class DocumentosControllerTest < ActionController::TestCase
  setup do
    @documento = documentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documento" do
    assert_difference('Documento.count') do
      post :create, documento: { cantidad_producto: @documento.cantidad_producto, fecha_emision: @documento.fecha_emision, folio: @documento.folio, rut_proveedor: @documento.rut_proveedor, tipo_documento: @documento.tipo_documento, valor_exento: @documento.valor_exento, valor_iva: @documento.valor_iva, valor_neto: @documento.valor_neto }
    end

    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should show documento" do
    get :show, id: @documento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documento
    assert_response :success
  end

  test "should update documento" do
    patch :update, id: @documento, documento: { cantidad_producto: @documento.cantidad_producto, fecha_emision: @documento.fecha_emision, folio: @documento.folio, rut_proveedor: @documento.rut_proveedor, tipo_documento: @documento.tipo_documento, valor_exento: @documento.valor_exento, valor_iva: @documento.valor_iva, valor_neto: @documento.valor_neto }
    assert_redirected_to documento_path(assigns(:documento))
  end

  test "should destroy documento" do
    assert_difference('Documento.count', -1) do
      delete :destroy, id: @documento
    end

    assert_redirected_to documentos_path
  end
end
