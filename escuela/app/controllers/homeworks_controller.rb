class HomeworksController < ApplicationController
def index
    @homeworks=Homework.all   
  end
  def new
    @homework= Homework.new
  end 
  def edit 
    @homework= Homework.find(params[:id])  
  end

  def create
    @homework=Homework.new(homework_params)
    @homework.save
    redirect_to homeworks_path
  end

  def destroy
    @homework= Homework.find(params[:id])
    @homework.destroy
    redirect_to homework_path
  end
  def update
    @homework= Homework.find(params[:id])
    @homework.update(homework_params) 
    redirect_to homeworks_path
  end

  def show
    @homework= Homework.find(params[:id])

  end 

  private

    def homework_params
      params.require(:homework).permit(:tema, :pregunta, :subject_id)
    end
end

