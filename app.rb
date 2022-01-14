require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
  
    get '/' do
      'Hello World'
    end

    get '/peeps' do
        @peeps = [
                  "peep1",
                  "peep2",
                  "peep3"
                 ]
         
        erb :'peeps/index'
      end
  
    run! if app_file == $0
  end