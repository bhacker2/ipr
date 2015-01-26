require 'test_helper'

class ScaffoldControllerTest < ActionController::TestCase
  test "should get impacted_application" do
    get :impacted_application
    assert_response :success
  end

  test "should get project_id:integer" do
    get :project_id:integer
    assert_response :success
  end

  test "should get application_id:integer" do
    get :application_id:integer
    assert_response :success
  end

end
