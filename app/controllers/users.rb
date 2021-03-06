

get '/:user' do
  erb :user
end

get '/:user/productivity' do
  @resource = Resource.all
  erb :productivity
end

get '/productivity/new' do
  @gituser = params[:gituser]
  response = Github.repos.list user: @gituser
  response.to_json

  # erb :productivity
end

get '/:user/distractions' do
  erb :'distractions/distractions'
end

get '/:user/distractions/picshare' do
  @picture = Picture.all.order('created_at DESC')
  erb :'distractions/picshare'
end

get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  create
  erb :'session/new'
end

post '/picshare' do
  Picture.create(url: params[:url], caption: params[:caption])



  redirect "#{session_current_user.username}/distractions/picshare"
end