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

    assert_nil list.head
  end

  def test_append_surname_to_list
    list = LinkedList.new

    list.append("West")

    assert_instance_of Node, list.head
    assert_equal "West", list.head.surname
  end

  def test_next_node_equals_nil_by_default
    list = LinkedList.new

    assert_nil list.head.next_node
  end

  def test_append_add_integer_with_count_method
    list = LinkedList.new

    list.append("West")

    assert_equal 2, list.count

    list.append("Rhodes")

    assert_equal 5, list.count

    list.append("Bieber")
    list.append("Swift")
    list.append("Gomez")

    assert_equal 13, list.count
    # binding.pry
  end

  def test_add_surname_to_string
    list = LinkedList.new

    list.append("West")

    assert_equal "The West family", list.to_string
  end

  def test_new_linked_list_class_is_created_with_head_equal_to_nil
      list = LinkedList.new

      assert_nil list.head
  end

  def test_next_node_equals_nil_by_default
      list = LinkedList.new

      list.append("Rhodes")

      assert_nil list.head.next_node
  end

  def test_append_multiple_items_to_list_end
      list = LinkedList.new

      assert_nil list.head

      list.append("Rhodes")

      assert_instance_of Node, list.head
      assert_equal "Rhodes", list.head.surname
      assert_nil list.head.next_node

      list.append("Hardy")

      assert_instance_of Node, list.head.next_node
      assert_equal "Hardy", list.head.next_node.surname

      list.append("Bieber")
      list.append("Swift")
      list.append("Gomez")

      assert_instance_of Node, list.head
                                   .next_node
                                   .next_node
                                   .next_node
                                   .next_node
      assert_equal "Gomez", list.head
                                .next_node
                                .next_node
                                .next_node
                                .next_node.surname
  end

  def test_multiple_surnames_to_string
    list = LinkedList.new

    assert_nil = list.head

    list.append("Rhodes")

    assert_instance_of Node, list.head
    assert_equal "The Rhodes family", list.to_string
    assert_nil list.head.next_node

    list.append("Hardy")

    assert_instance_of Node, list.head.next_node
    assert_equal "The Rhodes family, followed by the Hardy family", list.to_string
  end

  def test_prepend_nodes_to_list_beginning
    list = LinkedList.new

    assert_nil list.head

    list.prepend("Bobbes")

    assert_instance_of Node, list.head
    assert_equal "Bobbes", list.head.surname
    assert_nil list.head.next_node

    list.prepend("Mitchell")

    assert_instance_of Node, list.head
    assert_equal "Mitchell", list.head.surname

    list.prepend("Smith")
    list.prepend("Fry")
    list.prepend("Gomez")

    assert_instance_of Node, list.head
    assert_equal "Gomez", list.head.surname

  end

    def test_iteration_3
      list = LinkedList.new

      list.append("Brooks")

      assert_equal "Brooks", list.head.surname
      assert_equal "The Brooks family", list.to_string

      list.append("Henderson")
      assert_equal "Henderson", list.head.next_node.surname

      list.prepend("McKinney")
      assert_equal "McKinney", list.head.surname
      assert_equal "Brooks", list.head.next_node.surname

      list.to_string
      assert_equal "The McKinney family, followed by the Brooks family, followed by the Henderson family", list.to_string
      assert_equal 6, list.count

      list.insert(1, "Lawson")
      assert_equal "Lawson", list.head.next_node.surname
    end
end
