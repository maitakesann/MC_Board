require 'test_helper'

class CunstomersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cunstomers_show_url
    assert_response :success
  end

end
