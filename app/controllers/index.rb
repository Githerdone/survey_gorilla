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

get '/take_survey' do
  @survey = Survey.find(1)  # remove this stuff and put into take_survey post
  erb :take_survey
end

post '/take_survey/:id' do 
  @survey_name = Survey.find(params[:id])
  @question_bank = @survey.questions
  @answer_bank = @survey.questions.first.answers
  erb :take_survey
end
