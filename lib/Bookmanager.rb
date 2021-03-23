require 'pg'

class Bookmarks
    def stored 
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'Bookmark_manager_test')  
        else   
            connection = PG.connect(dbname: 'Bookmark_manager')
        end 
            result = connection.exec('SELECT * FROM bookmarks')   
            result.map { |bookmark| bookmark['url'] }
    end
end 


#result.each <-- would tack result and covert it into a hash  
        #find out why result terns into a hash. 
        # result.each { |bookmarks| p bookmarks}