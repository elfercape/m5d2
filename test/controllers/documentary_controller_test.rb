require "test_helper"

class DocumentaryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get documentary_create_url
    assert_response :success
  end

  test "should get index" do
    get documentary_index_url
    assert_response :success
  end

  test "should get new" do
    get documentary_new_url
    assert_response :success
  end
end
