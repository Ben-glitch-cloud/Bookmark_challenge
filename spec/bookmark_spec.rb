require './lib/Bookmanager' 

describe Bookmarks do
    describe 'stored' do
        it 'return a list of bookmarks' do 
            bookmarks = Bookmarks.new 
            expect(bookmarks.stored).to include "http://www.askjeeves.com"
            expect(bookmarks.stored).to include "http://www.twitter.com"
            expect(bookmarks.stored).to include "http://www.google.com"
        end
    end
end