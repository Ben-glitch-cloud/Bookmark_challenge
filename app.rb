require 'sinatra/base'  
require './lib/Bookmanager'

class BookmarkManager < Sinatra::Base  

    get '/' do 
        bookmarks = Bookmarks.new 
            @bookmarks = bookmarks.stored
        erb :'bookmarks/index'
    end  

    get '/new' do
        erb :'bookmarks/new'
    end 

    post '/new_bookmarks' do
        p params 
        p "This param will be add to the database table"
    end

    run! if app_file == $0
end 