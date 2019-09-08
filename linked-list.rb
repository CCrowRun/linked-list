class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
    attr_reader :data

    def initialize
      @data = nil
    end

    def push(value)
      @data = LinkedListNode.new(value, @data)
    end

    def pop
      popped_node = @data.value
      @data = @data.next_node
      return popped_node
    end
end

def reverse_list(list)
    rev_list = Stack.new
    while list
      rev_list.push(list.value)
      list = list.next_node
    end
    return rev_list.data
end