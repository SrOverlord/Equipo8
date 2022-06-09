require "test_helper"

class WalletCriptosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wallet_cripto = wallet_criptos(:one)
  end

  test "should get index" do
    get wallet_criptos_url
    assert_response :success
  end

  test "should get new" do
    get new_wallet_cripto_url
    assert_response :success
  end

  test "should create wallet_cripto" do
    assert_difference("WalletCripto.count") do
      post wallet_criptos_url, params: { wallet_cripto: { nombre: @wallet_cripto.nombre, valor: @wallet_cripto.valor } }
    end

    assert_redirected_to wallet_cripto_url(WalletCripto.last)
  end

  test "should show wallet_cripto" do
    get wallet_cripto_url(@wallet_cripto)
    assert_response :success
  end

  test "should get edit" do
    get edit_wallet_cripto_url(@wallet_cripto)
    assert_response :success
  end

  test "should update wallet_cripto" do
    patch wallet_cripto_url(@wallet_cripto), params: { wallet_cripto: { nombre: @wallet_cripto.nombre, valor: @wallet_cripto.valor } }
    assert_redirected_to wallet_cripto_url(@wallet_cripto)
  end

  test "should destroy wallet_cripto" do
    assert_difference("WalletCripto.count", -1) do
      delete wallet_cripto_url(@wallet_cripto)
    end

    assert_redirected_to wallet_criptos_url
  end
end
