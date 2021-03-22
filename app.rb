require 'sinatra/base'  
require './lib/Bookmanager'

class BookmarkManager < Sinatra::Base  

    get '/' do
        bookmarks = Bookmarks.new 
        @bookmarks = bookmarks.stored
        erb :'bookmarks/index'
    end 

    run! if app_file == $0
end 