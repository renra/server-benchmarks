require 'rubygems'
require 'rack'

Rack::Server.new(:app => Rack::File.new('./index.html'), :Port => 3000, :server => 'webrick').start
