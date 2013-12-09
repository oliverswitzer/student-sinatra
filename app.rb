require 'sinatra/base'

# Why is it a good idea to wrap our App class in a module?
module StudentSite
  class App < Sinatra::Base
    get '/' do
      "hello world!"
    end

    get '/hello-world' do
      @random_numbers = (1..20).to_a.shuffle
      erb :hello
    end

    get '/artists' do
      @artists = ["Deadmau5", "Koko", "Frank Zappa"]
      erb :artists
    end
  end
end