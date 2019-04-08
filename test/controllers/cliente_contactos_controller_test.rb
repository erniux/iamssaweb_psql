require 'test_helper'

class ClienteContactosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente_contacto = cliente_contactos(:one)
  end

  test "should get index" do
    get cliente_contactos_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_contacto_url
    assert_response :success
  end

  test "should create cliente_contacto" do
    assert_difference('ClienteContacto.count') do
      post cliente_contactos_url, params: { cliente_contacto: { apmaterno: @cliente_contacto.apmaterno, appaterno: @cliente_contacto.appaterno, clientes_id: @cliente_contacto.clientes_id, correo: @cliente_contacto.correo, departamento: @cliente_contacto.departamento, nombre: @cliente_contacto.nombre, puesto: @cliente_contacto.puesto, telefono_directo: @cliente_contacto.telefono_directo } }
    end

    assert_redirected_to cliente_contacto_url(ClienteContacto.last)
  end

  test "should show cliente_contacto" do
    get cliente_contacto_url(@cliente_contacto)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_contacto_url(@cliente_contacto)
    assert_response :success
  end

  test "should update cliente_contacto" do
    patch cliente_contacto_url(@cliente_contacto), params: { cliente_contacto: { apmaterno: @cliente_contacto.apmaterno, appaterno: @cliente_contacto.appaterno, clientes_id: @cliente_contacto.clientes_id, correo: @cliente_contacto.correo, departamento: @cliente_contacto.departamento, nombre: @cliente_contacto.nombre, puesto: @cliente_contacto.puesto, telefono_directo: @cliente_contacto.telefono_directo } }
    assert_redirected_to cliente_contacto_url(@cliente_contacto)
  end

  test "should destroy cliente_contacto" do
    assert_difference('ClienteContacto.count', -1) do
      delete cliente_contacto_url(@cliente_contacto)
    end

    assert_redirected_to cliente_contactos_url
  end
end
