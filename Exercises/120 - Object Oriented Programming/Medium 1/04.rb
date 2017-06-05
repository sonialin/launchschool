class CircularQueue
  attr_reader :orders

  def initialize(n)
    @items = Array.new(n)
    @orders = Array.new #This tracks the index of the items in the order they should be removed
  end

  def enqueue(item)
    if full?
      dequeue
    end
    inserted_spot = first_available_spot
    @items[inserted_spot] = item
    @orders << inserted_spot
  end

  def full?
    @items.select{|x| x == nil}.size == 0
  end

  def dequeue
    if @items.select {|x| x == nil}.size == @items.size
      return nil
    else
      index_of_item_to_be_removed = @orders.shift
      removed_item = @items[index_of_item_to_be_removed]
      @items[index_of_item_to_be_removed] = nil
      removed_item
    end
  end

  def to_a
    @items.clone
  end

  def first_available_spot
    available_spots = []
    @items.each_with_index do |x, i|
      available_spots << i if x == nil
    end
    available_spots.min
  end
end

queue = CircularQueue.new(3)
p queue.to_a
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1
p queue.to_a
p queue.orders

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2
p queue.to_a
p queue.orders

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil

queue = CircularQueue.new(4)
puts queue.dequeue == nil

queue.enqueue(1)
queue.enqueue(2)
puts queue.dequeue == 1

queue.enqueue(3)
queue.enqueue(4)
puts queue.dequeue == 2

queue.enqueue(5)
queue.enqueue(6)
queue.enqueue(7)
puts queue.dequeue == 4
puts queue.dequeue == 5
puts queue.dequeue == 6
puts queue.dequeue == 7
puts queue.dequeue == nil