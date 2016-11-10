require 'sinatra'
 
#Bound to this address so that external hosts can access it, VERY IMPORTANT!
set :bind, '0.0.0.0'
 
set :logging, true
 
get '/ack_key' do
  'hello world from docker!' + params[:key].to_s
end
