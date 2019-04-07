require 'test_helper'

class SolicitudTuberiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @solicitud_tuberium = solicitud_tuberia(:one)
  end

  test "should get index" do
    get solicitud_tuberia_url
    assert_response :success
  end

  test "should get new" do
    get new_solicitud_tuberium_url
    assert_response :success
  end

  test "should create solicitud_tuberium" do
    assert_difference('SolicitudTuberium.count') do
      post solicitud_tuberia_url, params: { solicitud_tuberium: { altura_piso: @solicitud_tuberium.altura_piso, codigo_evaluacion: @solicitud_tuberium.codigo_evaluacion, cve_cedula: @solicitud_tuberium.cve_cedula, diametro: @solicitud_tuberium.diametro, id_solicitud: @solicitud_tuberium.id_solicitud, no_uniones: @solicitud_tuberium.no_uniones, piso: @solicitud_tuberium.piso } }
    end

    assert_redirected_to solicitud_tuberium_url(SolicitudTuberium.last)
  end

  test "should show solicitud_tuberium" do
    get solicitud_tuberium_url(@solicitud_tuberium)
    assert_response :success
  end

  test "should get edit" do
    get edit_solicitud_tuberium_url(@solicitud_tuberium)
    assert_response :success
  end

  test "should update solicitud_tuberium" do
    patch solicitud_tuberium_url(@solicitud_tuberium), params: { solicitud_tuberium: { altura_piso: @solicitud_tuberium.altura_piso, codigo_evaluacion: @solicitud_tuberium.codigo_evaluacion, cve_cedula: @solicitud_tuberium.cve_cedula, diametro: @solicitud_tuberium.diametro, id_solicitud: @solicitud_tuberium.id_solicitud, no_uniones: @solicitud_tuberium.no_uniones, piso: @solicitud_tuberium.piso } }
    assert_redirected_to solicitud_tuberium_url(@solicitud_tuberium)
  end

  test "should destroy solicitud_tuberium" do
    assert_difference('SolicitudTuberium.count', -1) do
      delete solicitud_tuberium_url(@solicitud_tuberium)
    end

    assert_redirected_to solicitud_tuberia_url
  end
end
