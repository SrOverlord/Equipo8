require "test_helper"

class PerrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perro = perros(:one)
  end

  test "should get index" do
    get perros_url
    assert_response :success
  end

  test "should get new" do
    get new_perro_url
    assert_response :success
  end

  test "should create perro" do
    assert_difference("Perro.count") do
      post perros_url, params: { perro: { info: @perro.info, name: @perro.name, team: @perro.team } }
    end

    assert_redirected_to perro_url(Perro.last)
  end

  test "should show perro" do
    get perro_url(@perro)
    assert_response :success
  end

  test "should get edit" do
    get edit_perro_url(@perro)
    assert_response :success
  end

  test "should update perro" do
    patch perro_url(@perro), params: { perro: { info: @perro.info, name: @perro.name, team: @perro.team } }
    assert_redirected_to perro_url(@perro)
  end

  test "should destroy perro" do
    assert_difference("Perro.count", -1) do
      delete perro_url(@perro)
    end

    assert_redirected_to perros_url
  end
end
