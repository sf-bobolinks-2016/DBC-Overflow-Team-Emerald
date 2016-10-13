class Answer < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :question_id
  belongs_to :user

end
