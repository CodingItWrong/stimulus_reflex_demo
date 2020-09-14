class TodoReflex < ApplicationReflex
  after_reflex :set_editing_todo_id_instance_var

  def create
    Todo.create!(todo_params)
  end

  def update
    Todo.find(editing_todo_id)
        .update!(todo_params)
    self.editing_todo_id = nil
  end

  private

  def editing_todo_id
    session[:editing_todo_id]
  end

  def editing_todo_id=(id)
    session[:editing_todo_id] = id
  end

  def set_editing_todo_id_instance_var
    @editing_id = editing_todo_id
  end

  def todo_id
    element.dataset[:id].to_i
  end

  def todo_params
    params.require(:todo).permit(:name)
  end
end
