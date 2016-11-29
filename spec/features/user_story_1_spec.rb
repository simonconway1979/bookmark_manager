# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage
feature 'Accesing the website' do
  scenario 'I want to see a list of links' do
    Link.create(:title => "Makers", :url => 'http://www.makersacademy.com')
    visit '/links'
    within 'ul#links' do
      expect(page).to have_content('http://www.makersacademy.com')
    end
  end
end
