require 'test_helper'

class MyarticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myarticle = myarticles(:one)
  end

  test "should get index" do
    get myarticles_url
    assert_response :success
  end

  test "should get new" do
    get new_myarticle_url
    assert_response :success
  end

  test "should create myarticle" do
    assert_difference('Myarticle.count') do
      post myarticles_url, params: { myarticle: { article_id: @myarticle.article_id, date: @myarticle.date, time: @myarticle.time, user_id: @myarticle.user_id } }
    end

    assert_redirected_to myarticle_url(Myarticle.last)
  end

  test "should show myarticle" do
    get myarticle_url(@myarticle)
    assert_response :success
  end

  test "should get edit" do
    get edit_myarticle_url(@myarticle)
    assert_response :success
  end

  test "should update myarticle" do
    patch myarticle_url(@myarticle), params: { myarticle: { article_id: @myarticle.article_id, date: @myarticle.date, time: @myarticle.time, user_id: @myarticle.user_id } }
    assert_redirected_to myarticle_url(@myarticle)
  end

  test "should destroy myarticle" do
    assert_difference('Myarticle.count', -1) do
      delete myarticle_url(@myarticle)
    end

    assert_redirected_to myarticles_url
  end
end
