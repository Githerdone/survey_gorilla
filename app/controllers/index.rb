get '/' do
  erb :index
end

get '/create_survey/:id' do
	@user = User.find(1)
	erb :create_survey
end

post '/create_survey/:id' do
	@survey = Survey.create(params[:user])
	redirect "/make_questions/#{@survey.id}"
end 

get '/make_questions/:id' do |id|
	@survey = Survey.find(id)
	erb :make_questions
end

post '/make_questions/:id' do |id|
	@survey = Survey.find(id)
	@question = @survey.questions.create(params[:user])
	redirect "/question_answers/#{@question.id}"
end

get '/question_answers/:id' do |id|
	@question = Question.find(id)
	erb :question_answers
end

post '/question_answers/:id' do |id|
	@question = Question.find(id)
	@answer = @question.answers.create(params[:user])
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
  # @user_id.
end


# User.first.surveys.first.questions.first.answers.first.responses
