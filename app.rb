require 'sinatra'
require_relative 'web/layoutcreator.rb'
require_relative 'web/entrycreator.rb'
class View < Sinatra::Base
  enable :sessions
  get '/' do
    session[:entries] = 1 if session[:entries] == nil
    LayoutCreator.layout do
      EntryCreator.create_entry * session[:entries]
    end
  end

  get '/add' do
    session[:entries] += 1
    redirect '/'
  end
end
