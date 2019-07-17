require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    @session = session
    erb :index
  end

  configure do
    enable: sessions
  end

  post '/checkout' do
    @item = params['item']
    binding.pry
    erb :checkout
  end
end
