require 'test_helper'

class SolicitudTanquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_tanque = solicitud_tanques(:one)
  end

  test "should get index" do
    get solicitud_tanques_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_tanque_url
    assert_response :success
  end

  test "should create solicitud_tanque" do
    assert_difference('SolicitudTanque.count') do
      post solicitud_tanques_url, params: { solicitud_tanque: { codigo_evaluacion: @solicitud_tanque.codigo_evaluacion, espesor_capacidad: @solicitud_tanque.espesor_capacidad, espesor_cuerpo: @solicitud_tanque.espesor_cuerpo, espesor_diametro: @solicitud_tanque.espesor_diametro, espesor_longitud_altura: @solicitud_tanque.espesor_longitud_altura, espesor_tapa: @solicitud_tanque.espesor_tapa, id_solicitud: @solicitud_tanque.id_solicitud, no_sold_circunferencia: @solicitud_tanque.no_sold_circunferencia, no_sold_longitud: @solicitud_tanque.no_sold_longitud, recipiente_a_presion: @solicitud_tanque.recipiente_a_presion, tanque: @solicitud_tanque.tanque } }
    end

    assert_redirected_to solicitud_tanque_url(SolicitudTanque.last)
  end

  test "should show solicitud_tanque" do
    get solicitud_tanque_url(@solicitud_tanque)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_tanque_url(@solicitud_tanque)
    assert_response :success
  end

  test "should update solicitud_tanque" do
    patch solicitud_tanque_url(@solicitud_tanque), params: { solicitud_tanque: { codigo_evaluacion: @solicitud_tanque.codigo_evaluacion, espesor_capacidad: @solicitud_tanque.espesor_capacidad, espesor_cuerpo: @solicitud_tanque.espesor_cuerpo, espesor_diametro: @solicitud_tanque.espesor_diametro, espesor_longitud_altura: @solicitud_tanque.espesor_longitud_altura, espesor_tapa: @solicitud_tanque.espesor_tapa, id_solicitud: @solicitud_tanque.id_solicitud, no_sold_circunferencia: @solicitud_tanque.no_sold_circunferencia, no_sold_longitud: @solicitud_tanque.no_sold_longitud, recipiente_a_presion: @solicitud_tanque.recipiente_a_presion, tanque: @solicitud_tanque.tanque } }
    assert_redirected_to solicitud_tanque_url(@solicitud_tanque)
  end

  test "should destroy solicitud_tanque" do
    assert_difference('SolicitudTanque.count', -1) do
      delete solicitud_tanque_url(@solicitud_tanque)
    end

    assert_redirected_to solicitud_tanques_url
  end
end
