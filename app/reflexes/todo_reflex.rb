class TodoReflex < ApplicationReflex
  def create
    Todo.create!(todo_params)
  end

  def delete
    id = element.dataset[:id]
    Todo.find(id).destroy!
  end

  private

  def todo_params
    params.require(:todo).permit(:name)
  end
end
