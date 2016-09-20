require 'test_helper'

class ConfirmationControllerTest < ActionDispatch::IntegrationTest
  test "should get thankyou" do
    get confirmation_thankyou_url
    assert_response :success
  end

end
