require "minitest/autorun"
require "minitest/pride"
require "./lib/linked_list"

class LinkedListTest < Minitest::Test

  def test_linked_list_class_is_created
    list = LinkedList.new

    assert_equal LinkedList, list.class
  end

  def test_linked_list_head_equals_nil
    list = LinkedList.new

    assert_nil nil, list.head
  end

  def test_append_list_and_next_node_nil_by_default
    list = Node.new()

    assert_equal "West", list.append("West")
    assert_nil nil, list.next_node
  end

end
