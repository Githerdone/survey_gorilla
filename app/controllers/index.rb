get '/' do
  # Look in app/views/index.erb
  erb :index
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
