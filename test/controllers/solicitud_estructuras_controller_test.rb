require 'test_helper'

class SolicitudEstructurasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_estructura = solicitud_estructuras(:one)
  end

  test "should get index" do
    get solicitud_estructuras_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_estructura_url
    assert_response :success
  end

  test "should create solicitud_estructura" do
    assert_difference('SolicitudEstructura.count') do
      post solicitud_estructuras_url, params: { solicitud_estructura: { angulo_con_angulo: @solicitud_estructura.angulo_con_angulo, columna_hss_o_cajon: @solicitud_estructura.columna_hss_o_cajon, columna_pr: @solicitud_estructura.columna_pr, columna_ptr_o_monten: @solicitud_estructura.columna_ptr_o_monten, espesor_columna: @solicitud_estructura.espesor_columna, espesor_trabe: @solicitud_estructura.espesor_trabe, estructura: @solicitud_estructura.estructura, id_solicitud: @solicitud_estructura.id_solicitud, ptr_con_ptr: @solicitud_estructura.ptr_con_ptr, tiempo_fabricacion_montaje: @solicitud_estructura.tiempo_fabricacion_montaje, toneladas: @solicitud_estructura.toneladas, trabes_angulo_con_ptr: @solicitud_estructura.trabes_angulo_con_ptr, trabes_pr: @solicitud_estructura.trabes_pr, trabes_ps: @solicitud_estructura.trabes_ps, union_a_tope: @solicitud_estructura.union_a_tope, union_filete: @solicitud_estructura.union_filete } }
    end

    assert_redirected_to solicitud_estructura_url(SolicitudEstructura.last)
  end

  test "should show solicitud_estructura" do
    get solicitud_estructura_url(@solicitud_estructura)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_estructura_url(@solicitud_estructura)
    assert_response :success
  end

  test "should update solicitud_estructura" do
    patch solicitud_estructura_url(@solicitud_estructura), params: { solicitud_estructura: { angulo_con_angulo: @solicitud_estructura.angulo_con_angulo, columna_hss_o_cajon: @solicitud_estructura.columna_hss_o_cajon, columna_pr: @solicitud_estructura.columna_pr, columna_ptr_o_monten: @solicitud_estructura.columna_ptr_o_monten, espesor_columna: @solicitud_estructura.espesor_columna, espesor_trabe: @solicitud_estructura.espesor_trabe, estructura: @solicitud_estructura.estructura, id_solicitud: @solicitud_estructura.id_solicitud, ptr_con_ptr: @solicitud_estructura.ptr_con_ptr, tiempo_fabricacion_montaje: @solicitud_estructura.tiempo_fabricacion_montaje, toneladas: @solicitud_estructura.toneladas, trabes_angulo_con_ptr: @solicitud_estructura.trabes_angulo_con_ptr, trabes_pr: @solicitud_estructura.trabes_pr, trabes_ps: @solicitud_estructura.trabes_ps, union_a_tope: @solicitud_estructura.union_a_tope, union_filete: @solicitud_estructura.union_filete } }
    assert_redirected_to solicitud_estructura_url(@solicitud_estructura)
  end

  test "should destroy solicitud_estructura" do
    assert_difference('SolicitudEstructura.count', -1) do
      delete solicitud_estructura_url(@solicitud_estructura)
    end

    assert_redirected_to solicitud_estructuras_url
  end
end
