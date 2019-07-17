require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable: sessions
  end


  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    @item = params['item']
    binding.pry
    erb :checkout
  end
end
