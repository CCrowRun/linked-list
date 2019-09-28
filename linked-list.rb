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

def reverse_list(list, previous = nil)
  if list.next_node
    original_next_node = list.next_node
    list.next_node = previous
    previous = list
    reverse_list(original_next_node, previous)
  else
    list.next_node = previous
    @head = list
    return @head
  end
end

def is_infinite?(list, tortoise = list, hare = list)
  2.times{
    if hare
      hare = hare.next_node 
    else
      return false
    end
  }
  tortoise = tortoise.next_node
  if hare == tortoise 
    return true
  else 
    is_infinite?(list, tortoise, hare)
  end
end