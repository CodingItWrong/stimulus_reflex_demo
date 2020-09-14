class TodoComponent < ViewComponentReflex::Component
  def initialize(todo:, editing_id:)
    @todo = todo
    @editing = false
  end

  def collection_key
    @todo.id
  end

  def edit
    @editing = true
  end

  def cancel_edit
    @editing = false
  end

  def delete
    @todo.destroy!
  end

  private

  attr_reader :todo

  def editing?
    @editing
  end
end
