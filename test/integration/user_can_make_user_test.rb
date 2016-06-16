require 'test_helper'

class UserCanMakeUser < ActionDispatch::IntegrationTest
  test "can make a user" do
    visit new_user_path
    fill_in "Username", with: "TotallyRealUser"
    fill_in "Password", with: "UnbreakablePassword"
    click_button "Create Account"

    assert page.has_content?("Welcome, TotallyRealUser!")
  end
end
