class Node
attr_accessor :surname,
              :next_node,

  def initialize(data)
    @surname = surname
  end

  def append(data)
    if (data)
      @surname.append(data)
    else
      @next_node = nil
    end
  end
end


class LinkedList
attr_accessor :data,

  def initialize
    @head = nil
    @next_node = nil
  end

  def head
    @next_node
  end

end
