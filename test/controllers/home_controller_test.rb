require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get home_home_url
    assert_response :success
    assert_select 'title', 'Chess Store'
    assert_select 'h1', 'Title'
    assert_select 'p', 'Welcome'
  end
end
