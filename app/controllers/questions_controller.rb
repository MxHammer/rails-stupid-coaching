class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer.downcase == 'i am going to work right now!'
      @output = 'Great job!'
    elsif @answer.end_with?('?')
      @output = 'Silly question, get dressed and go to work!'
    else
      @output = 'I dont care, get dressed and go to work!'
    end
  end
end
