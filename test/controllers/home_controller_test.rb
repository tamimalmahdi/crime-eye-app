require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get home_home_url
    assert_response :success
    assert_select 'title', 'Chess Central'
    assert_select 'h1', 'Chess Central'
    assert_select 'p', 'Welcome to my chess store!'
    assert_select 'h1', 'Chess Central'
    assert_select '.home ul.catalog li', 3
    assert_select '.price', /\$[,\d]+\.\d\d/
  end

  test 'should get nav' do
    assert_select 'title', 'Chess Central'
    assert_select '#myNavbar topnav a', minimum: 4
    assert_select '#mySidebar sidebar a', minimum: 4
  end
end
