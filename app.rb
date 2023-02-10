require 'sinatra'
require_relative 'web/layoutcreator.rb'
class View < Sinatra::Base
  get '/' do
    LayoutCreator.layout
  end
end
