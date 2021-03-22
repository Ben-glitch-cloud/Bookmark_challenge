feature 'Viewing bookmarks' do
    scenario 'visiting the index page' do
      visit('/')
      expect(page).to have_content "timing" 
      expect(page).to have_content "building"
      expect(page).to have_content "working on things"
    end
  end