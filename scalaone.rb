require 'sinatra'
require 'json'
require 'pusher'

configure do
	Pusher.app_id = '26274'
    Pusher.key = '28f1d32eb7a1f83880af'
    Pusher.secret = '9514f2b210d56f1d5869'
end

get '/' do
	"ScalaOne Sinatra app"
end

get '/messages' do
	content_type :json
	{ :message => 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', :userID => 123 }.to_json
end

post '/messages' do
	Pusher['ScalaOne'].trigger('new_message', :message => params['text'], :senderID => params['senderID'], :dateSent => params['dateSent'])
	content_type :json
	{ :success => 1 }.to_json
end