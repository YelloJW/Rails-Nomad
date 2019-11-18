require 'test_helper'

class FlatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flats_index_url
    assert_response :success
  end

  test "should get show" do
    get flats_show_url
    assert_response :success
  end

  test "should get new" do
    get flats_new_url
    assert_response :success
  end

  test "should get create" do
    get flats_create_url
    assert_response :success
  end

end
