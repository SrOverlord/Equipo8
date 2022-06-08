require "test_helper"

class CuentaBancosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuenta_banco = cuenta_bancos(:one)
  end

  test "should get index" do
    get cuenta_bancos_url
    assert_response :success
  end

  test "should get new" do
    get new_cuenta_banco_url
    assert_response :success
  end

  test "should create cuenta_banco" do
    assert_difference("CuentaBanco.count") do
      post cuenta_bancos_url, params: { cuenta_banco: { comision: @cuenta_banco.comision, divisa: @cuenta_banco.divisa, numeroCuenta: @cuenta_banco.numeroCuenta, saldo: @cuenta_banco.saldo, tipo: @cuenta_banco.tipo, users_id: @cuenta_banco.users_id } }
    end

    assert_redirected_to cuenta_banco_url(CuentaBanco.last)
  end

  test "should show cuenta_banco" do
    get cuenta_banco_url(@cuenta_banco)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuenta_banco_url(@cuenta_banco)
    assert_response :success
  end

  test "should update cuenta_banco" do
    patch cuenta_banco_url(@cuenta_banco), params: { cuenta_banco: { comision: @cuenta_banco.comision, divisa: @cuenta_banco.divisa, numeroCuenta: @cuenta_banco.numeroCuenta, saldo: @cuenta_banco.saldo, tipo: @cuenta_banco.tipo, users_id: @cuenta_banco.users_id } }
    assert_redirected_to cuenta_banco_url(@cuenta_banco)
  end

  test "should destroy cuenta_banco" do
    assert_difference("CuentaBanco.count", -1) do
      delete cuenta_banco_url(@cuenta_banco)
    end

    assert_redirected_to cuenta_bancos_url
  end
end
