user = User.create :name => "test",
                   :email => "test@dummy.com",
                   :password => "test"

survey1 = user.surveys.create :title => "Colors"

question1 = survey1.questions.create :question => "What is your favorite color?"


question1.answers.create :answer => "Red"
answer1 = question1.answers.create :answer => "Green"
question1.answers.create :answer => "Blue"
answer1.responses.create :user_id => user.id

question2 = survey1.questions.create :question => "What is your favorite drink?"
question2.answers.create :answer => "Water"
answer2 = question2.answers.create :answer => "Beer"
question2.answers.create :answer => "Wine"
answer2.responses.create :user_id => user.id, :survey_id => 1
