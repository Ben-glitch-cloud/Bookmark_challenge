require './lib/Bookmanager'  
# require 'pg'

describe Bookmarks do
    describe 'stored' do
        it 'return a list of bookmarks' do  
            connection = PG.connect(dbname: 'Bookmark_manager_test') 
            
            connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
            connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
            connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

            bookmarks = Bookmarks.new 
            expect(bookmarks.stored).to include("http://www.askjeeves.com")
            expect(bookmarks.stored).to include("http://www.twitter.com")
            expect(bookmarks.stored).to include("http://www.google.com")
        end
    end 

    describe 'create' do
        it 'another bookmark' do
            bookmarks = Bookmarks.new 
            bookmarks.create(url: 'http://www.testbookmark.com')
            expect(bookmarks.stored).to include 'http://www.testbookmark.com'
        end
    end
end