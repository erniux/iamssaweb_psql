require 'test_helper'

class PaginasControllerTest < ActionDispatch::IntegrationTest
  test "should get Inicio" do
    get paginas_Inicio_url
    assert_response :success
  end

  test "should get Contacto" do
    get paginas_Contacto_url
    assert_response :success
  end

  test "should get Noticias" do
    get paginas_Noticias_url
    assert_response :success
  end

end
