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
  p @question_bank = @survey.questions
  p '*' * 80
  p @answer_bank = @survey.questions.first.answers
  erb :take_survey
end

post '/take_survey/:id' do 
  @survey_name = Survey.find(params[:id])
  p @question_bank = @survey.questions

  p @answer_bank = @survey.questions.first.answers
  erb :take_survey
end

post '/survey_submit' do 
  p "$" * 100
  p params
  # Response.create(user_id: session[:id], answer_id: params[:id])
  # @user_id.
end


# User.first.surveys.first.questions.first.answers.first.responses
