class LinkedList
    attr_accessor :head 

    def initialize
        self.head = nil
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