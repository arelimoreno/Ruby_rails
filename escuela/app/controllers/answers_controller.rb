class AnswersController < ApplicationController

def index
    @answers=Answer.all   
  end
  def new
    @answer= Answer.new
  end 
  def edit 
    @answer= Answer.find(params[:id])  
  end

  def create
    @answer=Answer.new(answer_params)
    @answer.save
    redirect_to answers_path
  end

  def destroy
    @answer= Answer.find(params[:id])
    @answer.destroy
    redirect_to answer_path
  end
  def update
    @answer= Answer.find(params[:id])
    @answer.update(answer_params) 
    redirect_to answers_path
  end

  def show
    @answer= Answer.find(params[:id])

  end 

  private

  private

    def answer_params
      params.require(:answer).permit(:respuesta, :nombre, :student_id, :homework_id)
    end
end

