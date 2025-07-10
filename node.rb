class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class LinkedList
  def initialize
    @head = nil
  end
  
  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
    else
      current = @head
      while current.next_node
        current = current.next_node
      end
      current.next_node = new_node
    end
  end
  
  def head
    @head
  end
  
  def tail
    return nil if @head.nil?

    current = @head
    current = current.next_node while current.next_node
    current
  end
  
  def at(index)
    current = @head
    count = 0
    while current
      return current if count == index
      count += 1
      current = current.next_node
    end
    nil
  end

  def pop
    return nil if @head.nil?
    return @head = nil if @head.next_node.nil?

    current = @head
    current = current.next_node while current.next_node.next_node
    current.next_node = nil
  end

  def contains?(value)
    current = @head
    while current
      return true if current.value == value
      current = current.next_node
    end
    false
  end

  def find(value)
    current = @head
    index = 0
    while current
      return index if current.value == value
      current = current.next_node
      index += 1
    end
    nil
  end
  
  def prepend(value)
    new_node = Node.new(value)
    new_node.next_node = @head
    @head = new_node
  end 
  
  def to_s
    current = @head
    result = ""
    while current
      result += "( #{current.value} ) -> "
      current = current.next_node
    end
    result += "nil"
    result
  end
  
  def insert_at(value, index)
    return prepend(value) if index == 0

    current = @head
    count = 0

    while current && count < index - 1
      current = current.next_node
      count += 1
    end

    return puts "Índice fora do limite" if current.nil?

    new_node = Node.new(value)
    new_node.next_node = current.next_node
    current.next_node = new_node
  end
  
  def remove_at(index)
    return puts "Lista vazia" if @head.nil?

    if index == 0
      @head = @head.next_node
      return
    end

    current = @head
    count = 0

    while current && count < index - 1
      current = current.next_node
      count += 1
    end

    return puts "Índice fora do limite" if current.nil? || current.next_node.nil?

    current.next_node = current.next_node.next_node
  end
  
  def size
    current = @head
    count = 0
    while current
      count += 1
      current = current.next_node
    end
    count
  end
  
  
    
    
end
    
list = LinkedList.new
list.append("dog")
list.append("cat")
list.prepend("elephant")
puts list.to_s
puts "Tamanho: #{list.size}"  
puts "Head: #{list.head.value}"  
puts "Tail: #{list.tail.value}"  
puts "Item no índice 1: #{list.at(1).value}"  
puts "Contém 'cat'? #{list.contains?("cat")}"  
puts "Índice de 'dog': #{list.find("dog")}"

list.pop
puts list.to_s 

puts "\n--- Inserindo 'rabbit' no índice 1 ---"
list.insert_at("rabbit", 1)
puts list.to_s  

puts "\n--- Removendo o item no índice 0 (elephant) ---"
list.remove_at(0)
puts list.to_s  

puts "\n--- Removendo o item no índice 1 (dog) ---"
list.remove_at(1)
puts list.to_s  

puts "\n--- Tentando remover índice fora do limite ---"
list.remove_at(10)  
  
