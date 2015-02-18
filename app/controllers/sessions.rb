enable :sessions

get '/session/new' do
  erb :'/session/new'
end

post '/session' do
  if session_authenticate(params[:email], params[:password])
    redirect session_redirect_target
  else
    @session_error = "Sorry, either your Email or Password was wrong. Please try again."
    erb :'session/new'
  end
end