class LinkedList
    attr_accessor :head 

    def initialize
        self.head = nil
    end 

    def append(data)
        # require "pry"; binding.pry
        if head.nil?
            self.head = Node.new(data, nil)
        else 
            tail_node = self.head 
            until tail_node.next_node.nil?
                tail_node = tail_node.next_node
            end 
            tail_node.next_node = Node.new(data, nil)
        end
    end

    def count(counter = 0, og_head = 0)
        if head.nil?
            return counter
        elsif head.next_node.nil?
            counter += 1
             if og_head.class != Integer
                # require "pry"; binding.pry
                self.head = og_head 
            end
            return counter
        else
        counter += 1
            if !self.head.next_node.nil?   
                og_head = self.head
                self.head = self.head.next_node
                self.count(counter, og_head)
            else
                counter += 1
                self.head = og_head
                return counter
            end 
        end 
    end

    private 

    class Node
        attr_accessor :data, :next_node 

        def initialize(data, next_node)
            self.data = data
            self.next_node = next_node
        end
    end 
end 

# ll = LinkedList.new
# ll.append(10)
# ll.append(20)
# ll.append(30)
# puts ll.head.data
# puts ll.head.next_node.data
# puts ll.head.next_node.next_node.data
# puts ll.head.next_node.next_node.next_node.nil?