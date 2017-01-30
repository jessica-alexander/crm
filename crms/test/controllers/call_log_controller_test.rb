require 'test_helper'

class CallLogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get call_log_index_url
    assert_response :success
  end

  test "should get show" do
    get call_log_show_url
    assert_response :success
  end

  test "should get new" do
    get call_log_new_url
    assert_response :success
  end

  test "should get edit" do
    get call_log_edit_url
    assert_response :success
  end

end
