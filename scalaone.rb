require 'sinatra'
require 'json'

get '/' do
  "ScalaOne Sinatra app"
end

get '/messages.json' do
  content_type :json
  { :message => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', :userID => 123 }.to_json
end