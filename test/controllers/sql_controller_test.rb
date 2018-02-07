require 'test_helper'

class SqlControllerTest < ActionDispatch::IntegrationTest
  test "should get queries" do
    get sql_queries_url
    assert_response :success
  end

end
