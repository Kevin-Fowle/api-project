get '/login' do
  # @user = User.new(params[:user])
  # p @user.password
  # if @user.authenticate?(@user.password)
  #   redirect '/'
  # else
    erb :'users/login'
  # end
end

post '/login' do
  @user = User.find_by(username: params[:user][:username])
  if @user.authenticate?(params[:user][:password])
    p params
    session[:user_id] = @user.id
    redirect '/'
  else
    #### how to print errors without a user object?
    erb :'users/login'
  end
  redirect '/users/login'
end

get '/logout' do
  ### delete one specific session..session.delete(session[:user_id])?
  session.clear
  redirect '/'
end