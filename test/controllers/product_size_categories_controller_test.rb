require 'test_helper'

class ProductSizeCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_size_category = product_size_categories(:one)
  end

  test "should get index" do
    get product_size_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_product_size_category_url
    assert_response :success
  end

  test "should create product_size_category" do
    assert_difference('ProductSizeCategory.count') do
      post product_size_categories_url, params: { product_size_category: { name: @product_size_category.name } }
    end

    assert_redirected_to product_size_category_url(ProductSizeCategory.last)
  end

  test "should show product_size_category" do
    get product_size_category_url(@product_size_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_size_category_url(@product_size_category)
    assert_response :success
  end

  test "should update product_size_category" do
    patch product_size_category_url(@product_size_category), params: { product_size_category: { name: @product_size_category.name } }
    assert_redirected_to product_size_category_url(@product_size_category)
  end

  test "should destroy product_size_category" do
    assert_difference('ProductSizeCategory.count', -1) do
      delete product_size_category_url(@product_size_category)
    end

    assert_redirected_to product_size_categories_url
  end
end
