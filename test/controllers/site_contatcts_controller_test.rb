require 'test_helper'

class SiteContatctsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_contatct = site_contatcts(:one)
  end

  test "should get index" do
    get site_contatcts_url
    assert_response :success
  end

  test "should get new" do
    get new_site_contatct_url
    assert_response :success
  end

  test "should create site_contatct" do
    assert_difference('SiteContatct.count') do
      post site_contatcts_url, params: { site_contatct: { answered: @site_contatct.answered, email: @site_contatct.email, message: @site_contatct.message, name: @site_contatct.name } }
    end

    assert_redirected_to site_contatct_url(SiteContatct.last)
  end

  test "should show site_contatct" do
    get site_contatct_url(@site_contatct)
    assert_response :success
  end

  test "should get edit" do
    get edit_site_contatct_url(@site_contatct)
    assert_response :success
  end

  test "should update site_contatct" do
    patch site_contatct_url(@site_contatct), params: { site_contatct: { answered: @site_contatct.answered, email: @site_contatct.email, message: @site_contatct.message, name: @site_contatct.name } }
    assert_redirected_to site_contatct_url(@site_contatct)
  end

  test "should destroy site_contatct" do
    assert_difference('SiteContatct.count', -1) do
      delete site_contatct_url(@site_contatct)
    end

    assert_redirected_to site_contatcts_url
  end
end
