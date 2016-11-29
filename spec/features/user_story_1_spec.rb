# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage
feature 'Accesing the website' do
  scenario 'I want to see a list of links' do
    Link.create(:name => "Makers", :address => 'http://www.makersacademy.com')
    visit '/'
    within 'ul#links' do
      expect(page).to find_link('Makers').visible?
    end
  end
end
