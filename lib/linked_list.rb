require "./lib/node"
class LinkedList
  attr_accessor :count
  attr_reader :head,
              :tail
              :current

  def initialize
    @head = nil
    @tail = nil
    @current = @head
    @count = 0
  end

  def prepend(data)
    new_node = Node.new(data)

    if head.nil?
      @head = @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
    @count += 1
  end

  def append(data)
    new_node = Node.new(data)
    if head.nil?
      @head = new_node
    else
      @tail.next_node = new_node
    end
    @tail = new_node
    @count += 1
  end

  def to_string
    #implement a while loop instead of if?
    if head.nil?
      ""
    elsif @count == 1
      "The #{head.surname} family"
    elsif @count == 2
      "The #{head.surname} family, followed by the #{tail.surname} family"
    else
      "The #{head.surname} family, followed by the #{head.next_node.surname} family, followed by the #{tail.surname} family"
    end
  end

  def insert(count, data)
  (count - 1).times do
    @current = @current.next_node
    end
      new_node = Node.new(data)
      new_node.next_node = @current.next_node
      @current.next_node = new_node
  end


end
