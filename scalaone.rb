require 'sinatra'
require 'json'

get '/' do
  "ScalaOne Sinatra app"
end

get '/messages.json' do
  content_type :json
  { :key1 => 'value1', :key2 => 'value2' }.to_json
end