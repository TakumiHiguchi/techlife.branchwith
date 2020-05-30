require 'test_helper'

class EditcategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get editcategory_index_url
    assert_response :success
  end

  test "should get show" do
    get editcategory_show_url
    assert_response :success
  end

  test "should get new" do
    get editcategory_new_url
    assert_response :success
  end

  test "should get crate" do
    get editcategory_crate_url
    assert_response :success
  end

  test "should get edit" do
    get editcategory_edit_url
    assert_response :success
  end

  test "should get update" do
    get editcategory_update_url
    assert_response :success
  end

  test "should get destroy" do
    get editcategory_destroy_url
    assert_response :success
  end

end
