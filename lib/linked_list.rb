# require 'pry'
require "./lib/node"
class LinkedList

  attr_reader :head,
              :count
  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @head = Node.new(data)
    @count += 1
  end

  def next_node
  end

  def to_string
    if head.nil?
      ""
    else
      "The #{head.surname} family"
    end
  end

end
