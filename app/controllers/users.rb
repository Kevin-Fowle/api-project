get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:username] = @user.username
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end


get '/users/:id' do
  @user = User.find(session[:id])
  erb :'users/profile'
end