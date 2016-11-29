# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage
feature 'Accesing the website' do
  scenario 'I want to see a list of links' do
  visit '/links'
    within 'ul#links' do
      expect(page).to have_content('http://www.makersacademy.com')
    end
  end

  scenario 'I fill in a form that creates a new link' do
    visit '/links/new'
    fill_in :title, with: "Makers"
    fill_in :url, with: "http://www.makersacademy.com"
    click_button("Add")
      within 'ul#links' do
        expect(page).to have_content('http://www.makersacademy.com')
    end
  end
end
