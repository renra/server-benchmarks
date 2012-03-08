require 'rubygems'
require 'rack'
require 'mongrel'

Rack::Server.new(:app => lambda{|e|  
  [200, {'Content-Type' => 'text/html'}, ['<html><body>It works!</body></html>']]
}, :Port => 3000, :server => 'mongrel').start
