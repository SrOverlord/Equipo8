require "application_system_test_case"

class WalletCriptosTest < ApplicationSystemTestCase
  setup do
    @wallet_cripto = wallet_criptos(:one)
  end

  test "visiting the index" do
    visit wallet_criptos_url
    assert_selector "h1", text: "Wallet criptos"
  end

  test "should create wallet cripto" do
    visit wallet_criptos_url
    click_on "New wallet cripto"

    fill_in "Nombre", with: @wallet_cripto.nombre
    fill_in "Valor", with: @wallet_cripto.valor
    click_on "Create Wallet cripto"

    assert_text "Wallet cripto was successfully created"
    click_on "Back"
  end

  test "should update Wallet cripto" do
    visit wallet_cripto_url(@wallet_cripto)
    click_on "Edit this wallet cripto", match: :first

    fill_in "Nombre", with: @wallet_cripto.nombre
    fill_in "Valor", with: @wallet_cripto.valor
    click_on "Update Wallet cripto"

    assert_text "Wallet cripto was successfully updated"
    click_on "Back"
  end

  test "should destroy Wallet cripto" do
    visit wallet_cripto_url(@wallet_cripto)
    click_on "Destroy this wallet cripto", match: :first

    assert_text "Wallet cripto was successfully destroyed"
  end
end
