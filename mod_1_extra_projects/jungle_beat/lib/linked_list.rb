class LinkedList
    attr_accessor :head 

    def initialize
        self.head = nil
    end 

    def append(data)
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

    private 

    class Node
        attr_accessor :data, :next_node 

        def initialize(data, next_node)
            self.data = data
            self.next_node = next_node
        end
    end 
end 