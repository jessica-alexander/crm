require 'test_helper'

class CallLogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get call_logs_index_url
    assert_response :success
  end

  test "should get show" do
    get call_logs_show_url
    assert_response :success
  end

  test "should get new" do
    get call_logs_new_url
    assert_response :success
  end

  test "should get edit" do
    get call_logs_edit_url
    assert_response :success
  end

end
