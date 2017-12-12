require 'test_helper'

class FieldControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get field_show_url
    assert_response :success
  end

end
