class UserStatistic < ApplicationRecord
  belongs_to :user


 # Virtual Attributes
  def total_questions
    self.right_questions + self.wrong_questions
  end

  #class Methods
  private

    def self.set_user_statistic(answers,current_user)
    if !!current_user 
        user_statistic = UserStatistic.find_or_create_by(user: current_user)
    answer.correct?  ? user_statistic.right_questions += 1 : user_statistic.wrong_questions += 1  
      user_statistic.save
    end
  end
end
