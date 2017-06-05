# This class represents a todo item and its associated
# data: name and description. There's also a "done"
# flag to show whether this todo item is done.

class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end
end

# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def add(item)
    if item.class != Todo
      raise TypeError, 'Can only add Todo objects'
    else
      @todos << item
      @todos
    end
  end

  def <<(item)
    add(item)
  end
 
  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def item_at(i)
    if i > @todos.length - 1
      raise IndexError
    else
      @todos[i]
    end
  end

  def mark_done_at(i)
    if i > @todos.length - 1
      raise IndexError
    else
      @todos[i].done!
    end
  end

  def mark_undone_at(i)
    if i > @todos.length - 1
      raise IndexError
    else
      @todos[i].undone!
    end
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def remove_at(i)
    if i > @todos.length - 1
      raise IndexError
    else
      @todos.delete_at(i)
    end
  end

  def to_s
    result = "---- #{title} ---- \n"
    @todos.each do |todo|
      result << "#{todo} \n"
    end
    result 
  end

  def each
    @todos.each do |todo|
      yield(todo)
    end
    self
  end

  def select
    selected = TodoList.new("")

    each do |todo|
      selected << todo if yield(todo)
    end

    selected
  end

  def find_by_title(str)
    each do |item|
      if item.title == str
        return item
        break
      end
    end
    nil
  end

  def all_done
    select {|item| item.done?}
  end

  def all_not_done
    select {|item| !item.done?}
  end

  def mark_done(str)
    if find_by_title(str)
      find_by_title(str).done!
    end
  end

  def mark_all_done
    each do |item|
      item.done!
    end
  end

  def mark_all_undone
    each do |item|
      item.undone!
    end
  end

end

todo1 = Todo.new("Buy milk")
todo2 = Todo.new("Clean room")
todo3 = Todo.new("Go to gym")

list = TodoList.new("Today's Todos")
list.add(todo1)
list.add(todo2)
list.add(todo3)

# todo1.done!

# results = list.select { |todo| todo.done? }    # you need to implement this method

# puts results.inspect

# puts list.find_by_title("Buy milk")

# puts list.all_done

# puts list.all_not_done

puts list.mark_done("Go to gym")
puts list
list.mark_all_done
puts list
list.mark_all_undone
puts list
