class TodoReflex < ApplicationReflex
  def delete
    id = element.dataset[:id]
    Todo.find(id).destroy!
  end
end
