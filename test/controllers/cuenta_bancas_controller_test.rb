require "test_helper"

class CuentaBancasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuenta_banca = cuenta_bancas(:one)
  end

  test "should get index" do
    get cuenta_bancas_url
    assert_response :success
  end

  test "should get new" do
    get new_cuenta_banca_url
    assert_response :success
  end

  test "should create cuenta_banca" do
    assert_difference("CuentaBanca.count") do
      post cuenta_bancas_url, params: { cuenta_banca: { comision: @cuenta_banca.comision, divisa: @cuenta_banca.divisa, numeroCuenta: @cuenta_banca.numeroCuenta, saldo: @cuenta_banca.saldo, tipo: @cuenta_banca.tipo, user_id: @cuenta_banca.user_id } }
    end

    assert_redirected_to cuenta_banca_url(CuentaBanca.last)
  end

  test "should show cuenta_banca" do
    get cuenta_banca_url(@cuenta_banca)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuenta_banca_url(@cuenta_banca)
    assert_response :success
  end

  test "should update cuenta_banca" do
    patch cuenta_banca_url(@cuenta_banca), params: { cuenta_banca: { comision: @cuenta_banca.comision, divisa: @cuenta_banca.divisa, numeroCuenta: @cuenta_banca.numeroCuenta, saldo: @cuenta_banca.saldo, tipo: @cuenta_banca.tipo, user_id: @cuenta_banca.user_id } }
    assert_redirected_to cuenta_banca_url(@cuenta_banca)
  end

  test "should destroy cuenta_banca" do
    assert_difference("CuentaBanca.count", -1) do
      delete cuenta_banca_url(@cuenta_banca)
    end

    assert_redirected_to cuenta_bancas_url
  end
end
