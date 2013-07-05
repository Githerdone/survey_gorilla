user = User.create :name => "test",
                   :email => "test@dummy.com",
                   :password => "test"

survey = user.surveys.create :title => "Colors"

question = survey.questions.create :question => "What is your favorite color?"


question.answers.create :answer => "Red"
answer = question.answers.create :answer => "Green"
question.answers.create :answer => "Blue"

answer.responses.create :user_id => user.id
