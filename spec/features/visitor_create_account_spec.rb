require "spec_helper"

feature "Account creation" do

  scenario "Allows guest to create account" do
    visit new_user_registration_path

    fill_in :user_email, :with => 'user23@sample23.com'
    fill_in :user_username, :with => 'username32'
    fill_in :user_password, :with => 'somepass'
    fill_in :user_password_confirmation, :with => 'somepass'

    click_button 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully'
  end

end
