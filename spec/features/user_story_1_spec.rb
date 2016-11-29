require 'spec_helper.rb'
require 'database_cleaner'
# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage



feature 'Accesing the website' do

  scenario 'I fill in a form that creates a new link' do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.start
    visit '/links/new'
    fill_in :title, with: "Makers"
    fill_in :url, with: "http://www.makersacademy.com"
    click_button("add")
      within 'ul#links' do
        expect(page).to have_content('http://www.makersacademy.com')
    end
    DatabaseCleaner.clean
  end
end
