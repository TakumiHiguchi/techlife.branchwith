require 'test_helper'

class EditpostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get editpost_index_url
    assert_response :success
  end

  test "should get show" do
    get editpost_show_url
    assert_response :success
  end

  test "should get new" do
    get editpost_new_url
    assert_response :success
  end

  test "should get create" do
    get editpost_create_url
    assert_response :success
  end

  test "should get edit" do
    get editpost_edit_url
    assert_response :success
  end

  test "should get update" do
    get editpost_update_url
    assert_response :success
  end

  test "should get destroy" do
    get editpost_destroy_url
    assert_response :success
  end

end
