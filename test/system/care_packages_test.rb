require "application_system_test_case"

class CarePackagesTest < ApplicationSystemTestCase
  setup do
    @care_package = care_packages(:one)
  end

  test "visiting the index" do
    visit care_packages_url
    assert_selector "h1", text: "Care packages"
  end

  test "should create care package" do
    visit care_packages_url
    click_on "New care package"

    fill_in "Price", with: @care_package.price
    click_on "Create Care package"

    assert_text "Care package was successfully created"
    click_on "Back"
  end

  test "should update Care package" do
    visit care_package_url(@care_package)
    click_on "Edit this care package", match: :first

    fill_in "Price", with: @care_package.price
    click_on "Update Care package"

    assert_text "Care package was successfully updated"
    click_on "Back"
  end

  test "should destroy Care package" do
    visit care_package_url(@care_package)
    click_on "Destroy this care package", match: :first

    assert_text "Care package was successfully destroyed"
  end
end
