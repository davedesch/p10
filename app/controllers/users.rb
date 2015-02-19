

get '/:user' do
  erb :user
end

get '/:user/productivity' do
  erb :productivity
end

get '/:user/distractions' do
  erb :'distractions/distractions'
end

get '/:user/distractions/picshare' do
  @picture = Picture.all
  erb :'distractions/picshare'
end

get '/users/new' do
  erb :user
end