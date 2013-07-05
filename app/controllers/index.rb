get '/' do
  erb :index
end

get '/dashboard/:id' do |id|
  @user = User.find(id)
  @surveys = @user.surveys
  erb :dashboard
end

get '/create_survey/:id' do |id|
  erb :create_survey
end

get '/take_survey/:id' do |id|
  erb :take_survey
end
