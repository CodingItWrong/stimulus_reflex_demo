class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def create
    Todo.create!(todo_params)
    redirect_to todos_path
  end

  def destroy
    Todo.find(params[:id]).destroy!
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end
