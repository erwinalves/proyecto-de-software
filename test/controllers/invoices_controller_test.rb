require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { cantidad_producto: @invoice.cantidad_producto, folio: @invoice.folio, rut_proveedor: @invoice.rut_proveedor, tipo_documento: @invoice.tipo_documento, valor_exento: @invoice.valor_exento, valor_iva: @invoice.valor_iva, valor_neto: @invoice.valor_neto }
    end

    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { cantidad_producto: @invoice.cantidad_producto, folio: @invoice.folio, rut_proveedor: @invoice.rut_proveedor, tipo_documento: @invoice.tipo_documento, valor_exento: @invoice.valor_exento, valor_iva: @invoice.valor_iva, valor_neto: @invoice.valor_neto }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end
