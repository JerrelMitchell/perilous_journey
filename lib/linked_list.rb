require "./lib/node"
class LinkedList
  attr_accessor :count
  attr_reader :head,
              :tail

  def initialize
    @head = nil
    @tail = nil
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

    if head.nil?
      ""
    elsif @count >= 1
      "The #{head.surname} family"
    else
      @count.times do |count| count += 1
        ", followed by the #{count.to_s.surname} family"
      end
    end
  end









  #needs to insert data at a chosen index of the linked list
  #need to reassign pointers from previous and next nodes
  def insert(count, data)
    new_node = Node.new(data)

    if head.nil?
      @head = @tail = new_node
    else
      new_node.next_node = new_node
    end
      @count += 1
  end


end
