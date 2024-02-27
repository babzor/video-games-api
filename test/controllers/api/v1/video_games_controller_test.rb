require "test_helper"

class Api::V1::VideoGamesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_video_games_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_video_games_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_video_games_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_video_games_destroy_url
    assert_response :success
  end
end
