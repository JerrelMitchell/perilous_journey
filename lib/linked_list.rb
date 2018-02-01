require "./lib/node"
class LinkedList
  attr_reader :head,
              :tail
              :current

  def initialize
    @head = nil
    @tail = nil
    @current = head
    @count = 0
  end

  def count
    count = 0
    current_node = @head
    until current_node.nil?
      @count += 1
      current_node = current_node.next_node
    end
    @count
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
v
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
    current = head
    (count - 1).times do
      raise "There's no room in the list" if current.nil?
      current = current.next_node
      new_node = Node.new(data)
      @current.next_node = new_node
    end
  end

  # need to find a way to index nodes with count and add an unlink and relink
  # functionality for between nodes to get insert method to work properly.


end
