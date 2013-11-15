require_relative './method_call_collector.rb'

require 'sinatra'

set :server, 'webrick'

get '/hello/world' do
  "Hello World!"
end

enable_tracers(tracers)
