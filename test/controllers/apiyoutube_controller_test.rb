require 'test_helper'

class ApiyoutubeControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get apiyoutube_search_url
    assert_response :success
  end

end
