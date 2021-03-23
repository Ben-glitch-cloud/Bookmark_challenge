feature 'Adding a new book mark' do
    scenario 'A user can add a bookmark to Bookmarks Manager' do
        visit('/new') 
        fill_in('url', with: 'http://testbookmark.com') 
        click_button('Submit') 

        expect(page).to have_content 'http://testbookmark.com'
    end
end