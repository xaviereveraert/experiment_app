class QuestionsController < ApplicationController

  def ask
  end

  def answer

    @question = params[:question]
    # The instance variable '@question' asks for the params specified in the 'ask'
    # url. This was directed to the answer in the form (<form action="/answer"> and
    #   it was specified in the form that the params would be 'question')
    if @question == "what's up?"
  @answer = "nothing"
    elsif @question == "How are you?"
  @answer = "fine"
    elsif @question == "What time is it?"
  @answer = Time.now
    else
  @answer = "type something legible"
    end
end
end






# def answer
#     @question = params[:question]
#     if @question.blank?
#       @answer = "I can't hear you!"
#     elsif @question =~ /i am going to work/i
#       @answer = "Great!"
#     elsif @question.ends_with?("?")
#       @answer = "Silly question, get dressed and go to work!"
#     else
#       @answer = "I don't care, get dressed and go to work!"
#     end
