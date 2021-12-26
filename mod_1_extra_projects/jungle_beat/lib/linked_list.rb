class LinkedList
    attr_accessor :head 

    def initialize
        self.head = nil
    end 
    
    def prepend(string)
        og_head = self.head
        new_node = Node.new(string, nil)
        new_node.next_node = og_head
        self.head = new_node
        string
    end

    def find(data)
        
    end

    def insert(index, string)
        counter = 0
        if index == 0
            self.prepend(string)
        elsif self.count == index
            self.append(string)
        else
            og_head = head
            until head.next_node.nil?
                if og_head != 0
                    counter += 1
                    self.head = head.next_node if counter != index
                    if counter == index                
                        tails = head.next_node
                        new_tails = self.prepend(Node.new(string, tails))
                        until og_head.next_node.nil?
                            if og_head.next_node.next_node == tails.next_node
                                og_head.next_node = new_tails
                                self.head = og_head
                                return string
                            end
                        end
                    end
                end
            end
        end
    end

    def to_string(string_collection = [])
        unless self.head.nil?
            tail_node = self.head
            og_head = self.head
            string_collection.push(tail_node.data)
            until tail_node.next_node.nil?
                tail_node = tail_node.next_node
                string_collection.push(tail_node.data)
                string_collection
            end
            self.head = og_head
            string_collection.join(" ")
        end
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

    def count(counter = 0)
        unless self.head.nil?
            tail_node = self.head
            og_head = self.head 
            until tail_node.next_node.nil?
                counter += 1
                tail_node = tail_node.next_node
            end
            counter += 1
            counter
        else
            counter
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
#  puts ll.count
#  puts ll.to_string