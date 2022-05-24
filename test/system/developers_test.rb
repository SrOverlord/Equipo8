require "application_system_test_case"

class DevelopersTest < ApplicationSystemTestCase
  setup do
    @developer = developers(:one)
  end

  test "visiting the index" do
    visit developers_url
    assert_selector "h1", text: "Developers"
  end

  test "should create developer" do
    visit developers_url
    click_on "New developer"

    fill_in "Name", with: @developer.name
    fill_in "Project", with: @developer.project_id
    fill_in "Surname", with: @developer.surname
    click_on "Create Developer"

    assert_text "Developer was successfully created"
    click_on "Back"
  end

  test "should update Developer" do
    visit developer_url(@developer)
    click_on "Edit this developer", match: :first

    fill_in "Name", with: @developer.name
    fill_in "Project", with: @developer.project_id
    fill_in "Surname", with: @developer.surname
    click_on "Update Developer"

    assert_text "Developer was successfully updated"
    click_on "Back"
  end

  test "should destroy Developer" do
    visit developer_url(@developer)
    click_on "Destroy this developer", match: :first

    assert_text "Developer was successfully destroyed"
  end
end
