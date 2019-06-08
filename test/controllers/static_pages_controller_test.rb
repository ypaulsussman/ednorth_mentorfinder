require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get lander" do
    get static_pages_lander_url
    assert_response :success
  end

end
