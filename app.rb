require 'sinatra'
require_relative 'web/layoutcreator.rb'
require_relative 'web/entrycreator.rb'
class View < Sinatra::Base
  get '/' do
    erb :index
    end
end
