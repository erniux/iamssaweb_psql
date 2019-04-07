require 'test_helper'

class SolicitudServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_servicio = solicitud_servicios(:one)
  end

  test "should get index" do
    get solicitud_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_servicio_url
    assert_response :success
  end

  test "should create solicitud_servicio" do
    assert_difference('SolicitudServicio.count') do
      post solicitud_servicios_url, params: { solicitud_servicio: { id_servicio: @solicitud_servicio.id_servicio, id_solicitud: @solicitud_servicio.id_solicitud } }
    end

    assert_redirected_to solicitud_servicio_url(SolicitudServicio.last)
  end

  test "should show solicitud_servicio" do
    get solicitud_servicio_url(@solicitud_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_servicio_url(@solicitud_servicio)
    assert_response :success
  end

  test "should update solicitud_servicio" do
    patch solicitud_servicio_url(@solicitud_servicio), params: { solicitud_servicio: { id_servicio: @solicitud_servicio.id_servicio, id_solicitud: @solicitud_servicio.id_solicitud } }
    assert_redirected_to solicitud_servicio_url(@solicitud_servicio)
  end

  test "should destroy solicitud_servicio" do
    assert_difference('SolicitudServicio.count', -1) do
      delete solicitud_servicio_url(@solicitud_servicio)
    end

    assert_redirected_to solicitud_servicios_url
  end
end
