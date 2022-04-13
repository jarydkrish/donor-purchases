require "test_helper"

class CarePackageProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @care_package_product = care_package_products(:one)
  end

  test "should get index" do
    get care_package_products_url
    assert_response :success
  end

  test "should get new" do
    get new_care_package_product_url
    assert_response :success
  end

  test "should create care_package_product" do
    assert_difference("CarePackageProduct.count") do
      post care_package_products_url, params: { care_package_product: { care_package_id: @care_package_product.care_package_id, product_id: @care_package_product.product_id, quantity: @care_package_product.quantity } }
    end

    assert_redirected_to care_package_product_url(CarePackageProduct.last)
  end

  test "should show care_package_product" do
    get care_package_product_url(@care_package_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_care_package_product_url(@care_package_product)
    assert_response :success
  end

  test "should update care_package_product" do
    patch care_package_product_url(@care_package_product), params: { care_package_product: { care_package_id: @care_package_product.care_package_id, product_id: @care_package_product.product_id, quantity: @care_package_product.quantity } }
    assert_redirected_to care_package_product_url(@care_package_product)
  end

  test "should destroy care_package_product" do
    assert_difference("CarePackageProduct.count", -1) do
      delete care_package_product_url(@care_package_product)
    end

    assert_redirected_to care_package_products_url
  end
end
