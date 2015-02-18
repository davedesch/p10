get '/:user' do
  erb :user
end

get '/:user/distractions' do
  erb :user
end

get '/:user/distractions/picshare' do
  @picture = Picture.all
  erb :'distractions/picshare'
end