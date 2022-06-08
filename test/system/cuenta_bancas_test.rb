require "application_system_test_case"

class CuentaBancasTest < ApplicationSystemTestCase
  setup do
    @cuenta_banca = cuenta_bancas(:one)
  end

  test "visiting the index" do
    visit cuenta_bancas_url
    assert_selector "h1", text: "Cuenta bancas"
  end

  test "should create cuenta banca" do
    visit cuenta_bancas_url
    click_on "New cuenta banca"

    fill_in "Comision", with: @cuenta_banca.comision
    fill_in "Divisa", with: @cuenta_banca.divisa
    fill_in "Numerocuenta", with: @cuenta_banca.numeroCuenta
    fill_in "Saldo", with: @cuenta_banca.saldo
    fill_in "Tipo", with: @cuenta_banca.tipo
    fill_in "User", with: @cuenta_banca.user_id
    click_on "Create Cuenta banca"

    assert_text "Cuenta banca was successfully created"
    click_on "Back"
  end

  test "should update Cuenta banca" do
    visit cuenta_banca_url(@cuenta_banca)
    click_on "Edit this cuenta banca", match: :first

    fill_in "Comision", with: @cuenta_banca.comision
    fill_in "Divisa", with: @cuenta_banca.divisa
    fill_in "Numerocuenta", with: @cuenta_banca.numeroCuenta
    fill_in "Saldo", with: @cuenta_banca.saldo
    fill_in "Tipo", with: @cuenta_banca.tipo
    fill_in "User", with: @cuenta_banca.user_id
    click_on "Update Cuenta banca"

    assert_text "Cuenta banca was successfully updated"
    click_on "Back"
  end

  test "should destroy Cuenta banca" do
    visit cuenta_banca_url(@cuenta_banca)
    click_on "Destroy this cuenta banca", match: :first

    assert_text "Cuenta banca was successfully destroyed"
  end
end
