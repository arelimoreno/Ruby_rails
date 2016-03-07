require 'test_helper'

class FacturasControllerTest < ActionController::TestCase
  setup do
    @factura = facturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create factura" do
    assert_difference('Factura.count') do
      post :create, factura: { apellido: @factura.apellido, cantidad: @factura.cantidad, descripcion: @factura.descripcion, fecha: @factura.fecha, identificacion: @factura.identificacion, iva: @factura.iva, nombre: @factura.nombre, producto: @factura.producto, telefono: @factura.telefono, total: @factura.total, valor: @factura.valor }
    end

    assert_redirected_to factura_path(assigns(:factura))
  end

  test "should show factura" do
    get :show, id: @factura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @factura
    assert_response :success
  end

  test "should update factura" do
    patch :update, id: @factura, factura: { apellido: @factura.apellido, cantidad: @factura.cantidad, descripcion: @factura.descripcion, fecha: @factura.fecha, identificacion: @factura.identificacion, iva: @factura.iva, nombre: @factura.nombre, producto: @factura.producto, telefono: @factura.telefono, total: @factura.total, valor: @factura.valor }
    assert_redirected_to factura_path(assigns(:factura))
  end

  test "should destroy factura" do
    assert_difference('Factura.count', -1) do
      delete :destroy, id: @factura
    end

    assert_redirected_to facturas_path
  end
end
