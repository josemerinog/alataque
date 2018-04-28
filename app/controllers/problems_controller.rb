class ProblemsController < ApplicationController
  def index
    @problems = Problem.all
  end

  def show
  end

  def new
    @problem = Problem.new
  end

def create
  @problem = Problem.new(problems_params)
  if @problem.save
    redirect_to problems_path
  else
    render :new
  end
end

  def edit
  end

private

def problems_params
  params.require(:problem).permit(:title, :description)

end

end # fin de la clase
