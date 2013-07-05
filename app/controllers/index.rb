get '/' do
  # Look in app/views/index.erb
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

