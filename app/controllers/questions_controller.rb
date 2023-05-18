class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.blank?
      @answer = 'huh?'
    elsif @question.ends_with?("?")
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Well done'
    else
      @answer = 'I dont care go to work'
    end
  end
end
