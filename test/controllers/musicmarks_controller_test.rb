require "test_helper"

class MusicmarksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicmark = musicmarks(:one)
  end

  test "should get index" do
    get musicmarks_url
    assert_response :success
  end

  test "should get new" do
    get new_musicmark_url
    assert_response :success
  end

  test "should create musicmark" do
    assert_difference('Musicmark.count') do
      post musicmarks_url, params: { musicmark: { album: @musicmark.album, band: @musicmark.band, category_id: @musicmark.category_id, kind_id: @musicmark.kind_id, name: @musicmark.name } }
    end

    assert_redirected_to musicmark_url(Musicmark.last)
  end

  test "should show musicmark" do
    get musicmark_url(@musicmark)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicmark_url(@musicmark)
    assert_response :success
  end

  test "should update musicmark" do
    patch musicmark_url(@musicmark), params: { musicmark: { album: @musicmark.album, band: @musicmark.band, category_id: @musicmark.category_id, kind_id: @musicmark.kind_id, name: @musicmark.name } }
    assert_redirected_to musicmark_url(@musicmark)
  end

  test "should destroy musicmark" do
    assert_difference('Musicmark.count', -1) do
      delete musicmark_url(@musicmark)
    end

    assert_redirected_to musicmarks_url
  end
end
