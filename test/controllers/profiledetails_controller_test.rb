require 'test_helper'

class ProfiledetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profiledetail = profiledetails(:one)
  end

  test "should get index" do
    get profiledetails_url
    assert_response :success
  end

  test "should get new" do
    get new_profiledetail_url
    assert_response :success
  end

  test "should create profiledetail" do
    assert_difference('Profiledetail.count') do
      post profiledetails_url, params: { profiledetail: { education: @profiledetail.education, experience: @profiledetail.experience, first_name: @profiledetail.first_name, last_name: @profiledetail.last_name, resume: @profiledetail.resume } }
    end

    assert_redirected_to profiledetail_url(Profiledetail.last)
  end

  test "should show profiledetail" do
    get profiledetail_url(@profiledetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_profiledetail_url(@profiledetail)
    assert_response :success
  end

  test "should update profiledetail" do
    patch profiledetail_url(@profiledetail), params: { profiledetail: { education: @profiledetail.education, experience: @profiledetail.experience, first_name: @profiledetail.first_name, last_name: @profiledetail.last_name, resume: @profiledetail.resume } }
    assert_redirected_to profiledetail_url(@profiledetail)
  end

  test "should destroy profiledetail" do
    assert_difference('Profiledetail.count', -1) do
      delete profiledetail_url(@profiledetail)
    end

    assert_redirected_to profiledetails_url
  end
end
