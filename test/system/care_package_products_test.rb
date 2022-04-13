require "application_system_test_case"

class CarePackageProductsTest < ApplicationSystemTestCase
  setup do
    @care_package_product = care_package_products(:one)
  end

  test "visiting the index" do
    visit care_package_products_url
    assert_selector "h1", text: "Care package products"
  end

  test "should create care package product" do
    visit care_package_products_url
    click_on "New care package product"

    fill_in "Care package", with: @care_package_product.care_package_id
    fill_in "Product", with: @care_package_product.product_id
    fill_in "Quantity", with: @care_package_product.quantity
    click_on "Create Care package product"

    assert_text "Care package product was successfully created"
    click_on "Back"
  end

  test "should update Care package product" do
    visit care_package_product_url(@care_package_product)
    click_on "Edit this care package product", match: :first

    fill_in "Care package", with: @care_package_product.care_package_id
    fill_in "Product", with: @care_package_product.product_id
    fill_in "Quantity", with: @care_package_product.quantity
    click_on "Update Care package product"

    assert_text "Care package product was successfully updated"
    click_on "Back"
  end

  test "should destroy Care package product" do
    visit care_package_product_url(@care_package_product)
    click_on "Destroy this care package product", match: :first

    assert_text "Care package product was successfully destroyed"
  end
end
