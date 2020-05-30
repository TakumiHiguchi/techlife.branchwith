require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get bitcoin" do
    get api_bitcoin_url
    assert_response :success
  end

end
