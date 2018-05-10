require 'test_helper'

class ServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get notupdated" do
    get service_notupdated_url
    assert_response :success
  end

  test "should get archive" do
    get service_archive_url
    assert_response :success
  end

  test "should get returnarchived" do
    get service_returnarchived_url
    assert_response :success
  end

end
