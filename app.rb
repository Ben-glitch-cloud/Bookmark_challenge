require 'sinatra/base'  
require './lib/Bookmanager'

class BookmarkManager < Sinatra::Base   

    enable :sessions, :method_override

    get '/' do 
        bookmarks = Bookmarks.new 
        @bookmarks = bookmarks.stored
        erb :'bookmarks/index'
    end  

    get '/new' do
        erb :'bookmarks/new'
    end 

    post '/new_bookmarks' do
        bookmarks = Bookmarks.new  
        bookmarks.create(url: params[:url], title: params[:title]) 
        redirect '/'
    end 

    delete '/bookmarks/:id' do 
        bookmarks = Bookmarks.new 
        p params 
        p params[:id]
        bookmarks.delete(id: params[:id]) 
        redirect '/'
    end 

    get ''

    run! if app_file == $0
end 