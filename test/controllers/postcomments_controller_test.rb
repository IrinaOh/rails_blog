require 'test_helper'

class PostcommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get postcomments_index_url
    assert_response :success
  end

  test "should get new" do
    get postcomments_new_url
    assert_response :success
  end

  test "should get create" do
    get postcomments_create_url
    assert_response :success
  end

  test "should get show" do
    get postcomments_show_url
    assert_response :success
  end

  test "should get search" do
    get postcomments_search_url
    assert_response :success
  end

  test "should get destroy" do
    get postcomments_destroy_url
    assert_response :success
  end

  test "should get edit" do
    get postcomments_edit_url
    assert_response :success
  end

  test "should get update" do
    get postcomments_update_url
    assert_response :success
  end

end
