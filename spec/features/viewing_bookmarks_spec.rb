require 'pg'

feature 'Viewing bookmarks' do
    scenario 'visiting the index page' do
      connection = PG.connect(dbname: 'Bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")  

      visit('/')

      expect(page).to have_content("http://www.askjeeves.com")
      expect(page).to have_content("http://www.askjeeves.com")
      expect(page).to have_content("http://www.google.com")
    end
end 

