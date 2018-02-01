class Node
  attr_accessor :next_node
  attr_reader   :surname

  def initialize(surname, next_node=nil)
    @surname = surname
    @next_node = next_node
  end
end
