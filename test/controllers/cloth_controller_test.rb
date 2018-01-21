require 'test_helper'

class ClothControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cloth_index_url
    assert_response :success
  end

  test "should get show" do
    get cloth_show_url
    assert_response :success
  end

  test "should get serach" do
    get cloth_serach_url
    assert_response :success
  end

end
