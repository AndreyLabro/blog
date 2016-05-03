require "spec_helper"

feature "Contact creation" do
  scenario "Allows access to contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "Allows guest to create contact" do
    visit '/contacts'
    fill_in :contact_email, :with => 'user@sample.com'
    fill_in :contact_message, :with => 'user@sample.com'
    click_button 'Yarrr!'

    expect(page).to have_content I18n.t('contacts.send_success')
  end
end
