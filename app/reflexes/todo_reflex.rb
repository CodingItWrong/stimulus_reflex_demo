class TodoReflex < ApplicationReflex
  def create
    Todo.create!(todo_params)
  end

  def edit
    @editing_id = todo_id
  end

  def cancel_edit
  end

  def update
    Todo.find(todo_id).update!(todo_params)
  end

  def delete
    Todo.find(todo_id).destroy!
  end

  private

  def todo_id
    element.dataset[:id].to_i
  end

  def todo_params
    params.require(:todo).permit(:name)
  end
end
