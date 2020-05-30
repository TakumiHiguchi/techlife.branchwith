require 'test_helper'

class FixedpageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fixedpage_index_url
    assert_response :success
  end

  test "should get show" do
    get fixedpage_show_url
    assert_response :success
  end

end
