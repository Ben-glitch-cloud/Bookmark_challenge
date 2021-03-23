feature 'Viewing bookmarks' do
    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content "http://www.askjeeves.com" 
      expect(page).to have_content "http://www.twitter.com"
      expect(page).to have_content "http://www.google.com"
    end
end 

