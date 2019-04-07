require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post clientes_url, params: { cliente: { calle_numero: @cliente.calle_numero, cobro_jueves: @cliente.cobro_jueves, cobro_lunes: @cliente.cobro_lunes, cobro_martes: @cliente.cobro_martes, cobro_miercoles: @cliente.cobro_miercoles, cobro_sabado: @cliente.cobro_sabado, cobro_viernes: @cliente.cobro_viernes, codigo_postal: @cliente.codigo_postal, colonia: @cliente.colonia, correo: @cliente.correo, credito: @cliente.credito, estado: @cliente.estado, medio_contacto: @cliente.medio_contacto, nombre_comercial: @cliente.nombre_comercial, nombre_fiscal: @cliente.nombre_fiscal, poblacion: @cliente.poblacion, precio: @cliente.precio, presupuesto: @cliente.presupuesto, revision_jueves: @cliente.revision_jueves, revision_lunes: @cliente.revision_lunes, revision_martes: @cliente.revision_martes, revision_miercoles: @cliente.revision_miercoles, revision_sabado: @cliente.revision_sabado, revision_viernes: @cliente.revision_viernes, rfc: @cliente.rfc, string: @cliente.string, telefono_celular: @cliente.telefono_celular, telefono_directo: @cliente.telefono_directo, telefono_oficina: @cliente.telefono_oficina } }
    end

    assert_redirected_to cliente_url(Cliente.last)
  end

  test "should show cliente" do
    get cliente_url(@cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_url(@cliente)
    assert_response :success
  end

  test "should update cliente" do
    patch cliente_url(@cliente), params: { cliente: { calle_numero: @cliente.calle_numero, cobro_jueves: @cliente.cobro_jueves, cobro_lunes: @cliente.cobro_lunes, cobro_martes: @cliente.cobro_martes, cobro_miercoles: @cliente.cobro_miercoles, cobro_sabado: @cliente.cobro_sabado, cobro_viernes: @cliente.cobro_viernes, codigo_postal: @cliente.codigo_postal, colonia: @cliente.colonia, correo: @cliente.correo, credito: @cliente.credito, estado: @cliente.estado, medio_contacto: @cliente.medio_contacto, nombre_comercial: @cliente.nombre_comercial, nombre_fiscal: @cliente.nombre_fiscal, poblacion: @cliente.poblacion, precio: @cliente.precio, presupuesto: @cliente.presupuesto, revision_jueves: @cliente.revision_jueves, revision_lunes: @cliente.revision_lunes, revision_martes: @cliente.revision_martes, revision_miercoles: @cliente.revision_miercoles, revision_sabado: @cliente.revision_sabado, revision_viernes: @cliente.revision_viernes, rfc: @cliente.rfc, string: @cliente.string, telefono_celular: @cliente.telefono_celular, telefono_directo: @cliente.telefono_directo, telefono_oficina: @cliente.telefono_oficina } }
    assert_redirected_to cliente_url(@cliente)
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete cliente_url(@cliente)
    end

    assert_redirected_to clientes_url
  end
end
