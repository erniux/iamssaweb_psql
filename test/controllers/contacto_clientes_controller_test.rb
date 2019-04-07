require 'test_helper'

class ContactoClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contacto_cliente = contacto_clientes(:one)
  end

  test "should get index" do
    get contacto_clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_contacto_cliente_url
    assert_response :success
  end

  test "should create contacto_cliente" do
    assert_difference('ContactoCliente.count') do
      post contacto_clientes_url, params: { contacto_cliente: { cargo: @contacto_cliente.cargo, correo: @contacto_cliente.correo, departamento: @contacto_cliente.departamento, nombre: @contacto_cliente.nombre, telefono: @contacto_cliente.telefono } }
    end

    assert_redirected_to contacto_cliente_url(ContactoCliente.last)
  end

  test "should show contacto_cliente" do
    get contacto_cliente_url(@contacto_cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_contacto_cliente_url(@contacto_cliente)
    assert_response :success
  end

  test "should update contacto_cliente" do
    patch contacto_cliente_url(@contacto_cliente), params: { contacto_cliente: { cargo: @contacto_cliente.cargo, correo: @contacto_cliente.correo, departamento: @contacto_cliente.departamento, nombre: @contacto_cliente.nombre, telefono: @contacto_cliente.telefono } }
    assert_redirected_to contacto_cliente_url(@contacto_cliente)
  end

  test "should destroy contacto_cliente" do
    assert_difference('ContactoCliente.count', -1) do
      delete contacto_cliente_url(@contacto_cliente)
    end

    assert_redirected_to contacto_clientes_url
  end
end
