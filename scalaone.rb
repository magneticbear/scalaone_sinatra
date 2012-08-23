require 'sinatra'
require 'json'
require 'pusher'

get '/' do
	"ScalaOne Sinatra app"
end

get '/messages' do
	content_type :json
	{ :message => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', :userID => 123 }.to_json
end

post '/messages' do
	Pusher.app_id = '26274'
    Pusher.key = '28f1d32eb7a1f83880af'
    Pusher.secret = '9514f2b210d56f1d5869'
	Pusher['ScalaOne'].trigger('new_message', :message => params['message'])
end