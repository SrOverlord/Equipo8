require "test_helper"

class PorjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get porjects_index_url
    assert_response :success
  end
end
