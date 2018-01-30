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

  def test_append_surname_to_list
    list = LinkedList.new

    list.append("West")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_list_shows_classes_ASK_FOR_HELP
    list = LinkedList.new

    assert_equal list, list
  end

  def test_next_node_equals_nil_by_default
    list = LinkedList.new

    assert_nil nil, list.head&.next_node
  end

  def test_return_integer_with_count_method
    list = LinkedList.new

    list.append("West")

    assert_equal 1, list.count
  end

  def test_add_surname_to_string
    list = LinkedList.new

    list.append("West")

    assert_equal "The West family", list.to_string
  end

  # def test_new_linked_list_class_is_created_with_head_equal_to_nil
  #     list = LinkedList.new
  #
  #     assert_equal nil, list.head
  # end
  #
  # def test_next_node_equals_nil_by_default
  #     list = LinkedList.new
  #
  #     list.append("Rhodes")
  #
  #     assert_nil list.head.next_node
  # end

  # def test_append_multiple_items_to_list
  #     list = LinkedList.new
  #
  #     assert_nil list.head
  #
  #     list.append("Rhodes")
  #
  #     assert_instance_of Node, list.head
  #     assert_equal "Rhodes", list.head.surname
  #     assert_nil list.head.next_node
  #
  #     list.append("Hardy")
  #
  #     assert_instance_of Node, list.head.next_node
  #     assert_equal "Hardy", list.head.next_node.surname
  #
  #     list.append("Bieber")
  #     list.append("Swift")
  #     list.append("Gomez")
  #
  #     assert_instance_of Node, list.head
  #                                  .next_node
  #                                  .next_node
  #                                  .next_node
  #                                  .next_node
  #     assert_equal "Gomez", list.head
  #                               .next_node
  #                               .next_node
  #                               .next_node
  #                               .next_node.surname

  # end
end
