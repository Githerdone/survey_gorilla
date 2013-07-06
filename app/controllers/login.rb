before '/dashboard/*' do
  redirect '/' unless session[:user_id]
end

get '/login' do
  erb :login
end

post '/login' do
  @user = User.find_by_email(params[:login][:email])
  if @user.try(:authenticate, params[:login][:password])
    session[:user_id] = @user.id
    erb :dashboard
  else
    redirect '/login'
  end
end

post '/signup' do
  if params[:signup][:password] == params[:signup][:confirmation]
    data = {:name => params[:signup][:name],
            :email => params[:signup][:email],
            :password => params[:signup][:password]}
    @user = User.create data
    session[:user_id] = @user.id
    erb :dashboard
  else
    redirect '/login'
  end
end
