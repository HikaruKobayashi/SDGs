require 'test_helper'

class SustainableCitiesAndCommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sustainable_cities_and_community = sustainable_cities_and_communities(:one)
  end

  test "should get index" do
    get sustainable_cities_and_communities_url
    assert_response :success
  end

  test "should get new" do
    get new_sustainable_cities_and_community_url
    assert_response :success
  end

  test "should create sustainable_cities_and_community" do
    assert_difference('SustainableCitiesAndCommunity.count') do
      post sustainable_cities_and_communities_url, params: { sustainable_cities_and_community: {  } }
    end

    assert_redirected_to sustainable_cities_and_community_url(SustainableCitiesAndCommunity.last)
  end

  test "should show sustainable_cities_and_community" do
    get sustainable_cities_and_community_url(@sustainable_cities_and_community)
    assert_response :success
  end

  test "should get edit" do
    get edit_sustainable_cities_and_community_url(@sustainable_cities_and_community)
    assert_response :success
  end

  test "should update sustainable_cities_and_community" do
    patch sustainable_cities_and_community_url(@sustainable_cities_and_community), params: { sustainable_cities_and_community: {  } }
    assert_redirected_to sustainable_cities_and_community_url(@sustainable_cities_and_community)
  end

  test "should destroy sustainable_cities_and_community" do
    assert_difference('SustainableCitiesAndCommunity.count', -1) do
      delete sustainable_cities_and_community_url(@sustainable_cities_and_community)
    end

    assert_redirected_to sustainable_cities_and_communities_url
  end
end
