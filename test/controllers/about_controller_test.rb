require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get about_home_url
    assert_response :success
  end

  test "should get docs" do
    get about_docs_url
    assert_response :success
  end

end
