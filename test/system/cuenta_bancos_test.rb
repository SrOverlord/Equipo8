require "application_system_test_case"

class CuentaBancosTest < ApplicationSystemTestCase
  setup do
    @cuenta_banco = cuenta_bancos(:one)
  end

  test "visiting the index" do
    visit cuenta_bancos_url
    assert_selector "h1", text: "Cuenta bancos"
  end

  test "should create cuenta banco" do
    visit cuenta_bancos_url
    click_on "New cuenta banco"

    fill_in "Comision", with: @cuenta_banco.comision
    fill_in "Divisa", with: @cuenta_banco.divisa
    fill_in "Numerocuenta", with: @cuenta_banco.numeroCuenta
    fill_in "Saldo", with: @cuenta_banco.saldo
    fill_in "Tipo", with: @cuenta_banco.tipo
    fill_in "User", with: @cuenta_banco.user_id
    click_on "Create Cuenta banco"

    assert_text "Cuenta banco was successfully created"
    click_on "Back"
  end

  test "should update Cuenta banco" do
    visit cuenta_banco_url(@cuenta_banco)
    click_on "Edit this cuenta banco", match: :first

    fill_in "Comision", with: @cuenta_banco.comision
    fill_in "Divisa", with: @cuenta_banco.divisa
    fill_in "Numerocuenta", with: @cuenta_banco.numeroCuenta
    fill_in "Saldo", with: @cuenta_banco.saldo
    fill_in "Tipo", with: @cuenta_banco.tipo
    fill_in "User", with: @cuenta_banco.user_id
    click_on "Update Cuenta banco"

    assert_text "Cuenta banco was successfully updated"
    click_on "Back"
  end

  test "should destroy Cuenta banco" do
    visit cuenta_banco_url(@cuenta_banco)
    click_on "Destroy this cuenta banco", match: :first

    assert_text "Cuenta banco was successfully destroyed"
  end
end
