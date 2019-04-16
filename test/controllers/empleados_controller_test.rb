require 'test_helper'

class EmpleadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empleado = empleados(:one)
  end

  test "should get index" do
    get empleados_url
    assert_response :success
  end

  test "should get new" do
    get new_empleado_url
    assert_response :success
  end

  test "should create empleado" do
    assert_difference('Empleado.count') do
      post empleados_url, params: { empleado: { Agudeza: @empleado.Agudeza, CP: @empleado.CP, CURP: @empleado.CURP, Cedula: @empleado.Cedula, Celular: @empleado.Celular, Colonia: @empleado.Colonia, Colores: @empleado.Colores, Contratacion: @empleado.Contratacion, Depto: @empleado.Depto, Direccion: @empleado.Direccion, Estado: @empleado.Estado, Examinador: @empleado.Examinador, Exped2: @empleado.Exped2, Exped: @empleado.Exped, Grises: @empleado.Grises, IMSS: @empleado.IMSS, IdEntidad: @empleado.IdEntidad, Iniciales: @empleado.Iniciales, Jaeger: @empleado.Jaeger, Licencia2: @empleado.Licencia2, Licencia: @empleado.Licencia, Nacimiento: @empleado.Nacimiento, Nextel: @empleado.Nextel, NoCredencial: @empleado.NoCredencial, Nombre: @empleado.Nombre, Ocupacion: @empleado.Ocupacion, Poblacion: @empleado.Poblacion, Puesto: @empleado.Puesto, RFC: @empleado.RFC, Radio: @empleado.Radio, RazonSocial: @empleado.RazonSocial, Registro: @empleado.Registro, Telefono: @empleado.Telefono, Tipo2: @empleado.Tipo2, Tipo: @empleado.Tipo, UltExa: @empleado.UltExa, Venc2: @empleado.Venc2, Venc: @empleado.Venc } }
    end

    assert_redirected_to empleado_url(Empleado.last)
  end

  test "should show empleado" do
    get empleado_url(@empleado)
    assert_response :success
  end

  test "should get edit" do
    get edit_empleado_url(@empleado)
    assert_response :success
  end

  test "should update empleado" do
    patch empleado_url(@empleado), params: { empleado: { Agudeza: @empleado.Agudeza, CP: @empleado.CP, CURP: @empleado.CURP, Cedula: @empleado.Cedula, Celular: @empleado.Celular, Colonia: @empleado.Colonia, Colores: @empleado.Colores, Contratacion: @empleado.Contratacion, Depto: @empleado.Depto, Direccion: @empleado.Direccion, Estado: @empleado.Estado, Examinador: @empleado.Examinador, Exped2: @empleado.Exped2, Exped: @empleado.Exped, Grises: @empleado.Grises, IMSS: @empleado.IMSS, IdEntidad: @empleado.IdEntidad, Iniciales: @empleado.Iniciales, Jaeger: @empleado.Jaeger, Licencia2: @empleado.Licencia2, Licencia: @empleado.Licencia, Nacimiento: @empleado.Nacimiento, Nextel: @empleado.Nextel, NoCredencial: @empleado.NoCredencial, Nombre: @empleado.Nombre, Ocupacion: @empleado.Ocupacion, Poblacion: @empleado.Poblacion, Puesto: @empleado.Puesto, RFC: @empleado.RFC, Radio: @empleado.Radio, RazonSocial: @empleado.RazonSocial, Registro: @empleado.Registro, Telefono: @empleado.Telefono, Tipo2: @empleado.Tipo2, Tipo: @empleado.Tipo, UltExa: @empleado.UltExa, Venc2: @empleado.Venc2, Venc: @empleado.Venc } }
    assert_redirected_to empleado_url(@empleado)
  end

  test "should destroy empleado" do
    assert_difference('Empleado.count', -1) do
      delete empleado_url(@empleado)
    end

    assert_redirected_to empleados_url
  end
end
