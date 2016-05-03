require "spec_helper"

feature "Contact creation" do
  scenario "Allows access to contact page" do
    visit '/contacts'
    expect(page).to have_content 'Contact us'
  end
end
