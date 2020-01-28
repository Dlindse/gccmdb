require 'test_helper'

class ScratchControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get scratch_homepage_url
    assert_response :success
  end

  test "should get one" do
    get scratch_one_url
    assert_response :success
  end

end
