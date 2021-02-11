require "test_helper"

class ClubhousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clubhouse = clubhouses(:one)
  end

  test "should get index" do
    get clubhouses_url
    assert_response :success
  end

  test "should get new" do
    get new_clubhouse_url
    assert_response :success
  end

  test "should create clubhouse" do
    assert_difference('Clubhouse.count') do
      post clubhouses_url, params: { clubhouse: { post: @clubhouse.post } }
    end

    assert_redirected_to clubhouse_url(Clubhouse.last)
  end

  test "should show clubhouse" do
    get clubhouse_url(@clubhouse)
    assert_response :success
  end

  test "should get edit" do
    get edit_clubhouse_url(@clubhouse)
    assert_response :success
  end

  test "should update clubhouse" do
    patch clubhouse_url(@clubhouse), params: { clubhouse: { post: @clubhouse.post } }
    assert_redirected_to clubhouse_url(@clubhouse)
  end

  test "should destroy clubhouse" do
    assert_difference('Clubhouse.count', -1) do
      delete clubhouse_url(@clubhouse)
    end

    assert_redirected_to clubhouses_url
  end
end
