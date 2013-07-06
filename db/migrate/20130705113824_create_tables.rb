class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :password_digest
    end

    create_table :surveys do |t|
      t.integer :user_id
      t.text :title
    end

    create_table :questions do |t|
      t.integer :survey_id
      t.text :question
    end

    create_table :answers do |t|
      t.integer :question_id
      t.text :answer
    end

    create_table :responses do |t|
      t.integer :user_id
      t.integer :answer_id
      t.integer :survey_id
    end
  end

end
