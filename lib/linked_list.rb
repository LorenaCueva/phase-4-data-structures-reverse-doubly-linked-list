require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if @head == @tail

    temp = @head
    back = nil
    @tail = @head
    
    while temp != nil
      @head = temp
      temp = temp.next_node
      @head.prev_node = temp
      @head.next_node = back
      back = @head
    end
  end
end
