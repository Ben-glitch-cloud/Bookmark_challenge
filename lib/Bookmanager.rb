require 'pg'

class Bookmarks
    def stored
        connection = PG.connect(dbname: 'Bookmark_manager') 
        result = connection.exec('SELECT * FROM bookmarks')  
        result.map { |bookmark| bookmark['url'] }
    end
end 