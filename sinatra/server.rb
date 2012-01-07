require 'rubygems'
require 'sinatra'

set :port, 3000

get '/' do
  File.read('index.html')
end
