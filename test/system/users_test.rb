require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Document expiration date", with: @user.document_expiration_date
    fill_in "Document issuance date", with: @user.document_issuance_date
    fill_in "Document number", with: @user.document_number
    fill_in "Email", with: @user.email
    fill_in "Firts name", with: @user.firts_name
    fill_in "Phone", with: @user.phone
    fill_in "Phone secundary", with: @user.phone_secundary
    fill_in "Type document", with: @user.type_document
    fill_in "Type user", with: @user.type_user
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Document expiration date", with: @user.document_expiration_date
    fill_in "Document issuance date", with: @user.document_issuance_date
    fill_in "Document number", with: @user.document_number
    fill_in "Email", with: @user.email
    fill_in "Firts name", with: @user.firts_name
    fill_in "Phone", with: @user.phone
    fill_in "Phone secundary", with: @user.phone_secundary
    fill_in "Type document", with: @user.type_document
    fill_in "Type user", with: @user.type_user
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
