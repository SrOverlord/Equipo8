require "test_helper"

class CriptoControllerTest < ActionDispatch::IntegrationTest
  test "should get criptoVista" do
    get cripto_criptoVista_url
    assert_response :success
  end
end
