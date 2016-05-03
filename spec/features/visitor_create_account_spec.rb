require "spec_helper"
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

feature "Account creation" do

  scenario "Allows guest to create account" do
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@sample.com'
    fill_in :user_username, :with => 'username'
    fill_in :user_password, :with => 'somepass'
    fill_in :user_password_confirmation, :with => 'somepass'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
