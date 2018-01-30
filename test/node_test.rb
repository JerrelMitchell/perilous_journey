require "minitest/autorun"
require "minitest/pride"
require "./lib/node"


class NodeTest < Minitest::Test

  def test_node_is_created
    node = Node.new("Burke")

    assert_equal Node, node.class
  end

  def test_surname_method_creates_surname
    node = Node.new("Burke")

    assert_equal "Burke", node.surname
  end

  def test_next_node_equals_nil_by_default
    node = Node.new(nil)

    assert_nil nil, node.next_node
  end
end
