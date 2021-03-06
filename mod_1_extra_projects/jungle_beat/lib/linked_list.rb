class LinkedList
    attr_accessor :head 

    def initialize
        self.head = nil
    end

    def pop
        return if head.nil?
        node = head
        previous_node = nil
        until(node.next_node.nil?)
            if(node.next_node.next_node.nil?)
                string = node.next_node.data
                node.next_node = nil
                return string
            end
            previous_node = node
            node = node.next_node
        end
    end

    def includes?(string)
        og_head = head
        until head.data == string
            self.head = head.next_node
            if head.nil?
                self.head = og_head
                return false
            elsif head.data == string
                self.head = og_head
                return true
            end
        end
        if head.data == string
            self.head = og_head
            return true
        end 
    end
    
    def prepend(string)
        og_head = self.head
        new_node = Node.new(string, nil)
        new_node.next_node = og_head
        self.head = new_node
        string
    end

    def find(index, distance)
        collection = []
        ind = index - 1
        current = head
        index.times do
            current = current.next_node
        end
        if distance == 0
            return nil
        elsif distance == 1
            current.data
        else
            distance.times do
                collection.push(current.data)
                current = current.next_node
            end
            collection.join(" ")
        end
    end

    def insert(index, string)
        if self.head.nil?
            new_node = Node.new(string, nil)
            self.head = new_node
        elsif index == 0
            self.prepend(string)
        elsif self.count == index
            self.append(string)
        elsif index > 0
            ind = index - 1
            current = head
            before_current = head
            ind.times do
                before_current = before_current.next_node
            end
            index.times do
                current = current.next_node
            end
            new_node = Node.new(string, nil)
            after_current = before_current.next_node
            before_current.next_node = new_node
            new_node.next_node = after_current
            string
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
