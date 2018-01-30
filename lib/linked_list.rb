# require 'pry'
require "./lib/node"
class LinkedList

  attr_reader :head

  def initialize
    @head = nil

  end

  def append(data)
    @head = Node.new(data)
  end

  def next_node
  end

  def count
  end

  def to_string
    if head.nil?
      ""
    else
      "The #{head.surname} family"
    end
  end

end
