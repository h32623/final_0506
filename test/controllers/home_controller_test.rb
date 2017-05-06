require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get field" do
    get :field
    assert_response :success
  end

  test "should get region" do
    get :region
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end