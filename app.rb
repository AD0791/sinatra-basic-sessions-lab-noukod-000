require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    # create session la
    enable :sessions
  end


  get '/' do
    erb :index
  end

  post '/checkout' do
    # data are in params and session. 2 hashes
    @item = params['item']
    session['item'] = params['item']
    @session = session
    binding.pry
    erb :checkout
  end
end
