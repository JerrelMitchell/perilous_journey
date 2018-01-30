require "./lib/node"
class LinkedList

  attr_reader :head,
              :tail,
              :count

  def initialize
    @head = nil
    @tail = nil
    @count = 0
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
    elsif @count == 1
      "The #{head.surname} family."
    else
      "The #{head.surname} family, followed by the #{tail.surname} family."
    end
  end

end
