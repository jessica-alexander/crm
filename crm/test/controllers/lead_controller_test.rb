require 'test_helper'

class LeadControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lead_index_url
    assert_response :success
  end

  test "should get show" do
    get lead_show_url
    assert_response :success
  end

  test "should get new" do
    get lead_new_url
    assert_response :success
  end

  test "should get edit" do
    get lead_edit_url
    assert_response :success
  end

end
