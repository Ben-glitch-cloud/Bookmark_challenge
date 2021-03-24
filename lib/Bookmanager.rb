require 'pg'

class Bookmarks 

    attr_reader :id, :title, :url

    def initialize(id: nil, title: nil, url: nil) #<-- nil fixed this issue with ArgumentError - missing keywords:
        @id = id
        @title = title 
        @url = url 
    end 

    def stored 
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'Bookmark_manager_test')  
        else   
            connection = PG.connect(dbname: 'Bookmark_manager')
        end 
            result = connection.exec('SELECT * FROM bookmarks')   
            result.map do |bookmarks|
                Bookmarks.new(id: bookmarks['id'], title: bookmarks['title'], url: bookmarks['url'])
            end
    end 

    def create(url:, title:)
        if ENV['ENVIRONMENT'] == 'test'
            connection = PG.connect(dbname: 'Bookmark_manager_test')  
        else   
            connection = PG.connect(dbname: 'Bookmark_manager')
        end  
        result = connection.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}') RETURNING id, url, title") 
        Bookmarks.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
    end  

    def delete(id:) 
        if ENV['ENVIRONMENT'] == 'test'   
            connection = PG.connect(dbname: 'Bookmark_manager_test')
        else  
            connection = PG.connect(dbname: 'Bookmark_manager')
        end    
        connection.exec("DELETE from bookmarks WHERE id = #{id}") 

    end 
end 


