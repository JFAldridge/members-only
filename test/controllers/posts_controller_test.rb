require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:josh)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new if user is logged in" do
    log_in_as(@user)
    get new_post_url
    assert_response :success
  end

end
