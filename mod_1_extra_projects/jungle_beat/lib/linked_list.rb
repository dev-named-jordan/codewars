class LinkedList
    attr_accessor :head 

    def initialize
        self.head = nil
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

    # def to_string(linked_list, string_list = [])
    #     if linked_list.head && linked_list.head.next_node.nil? && string_list == []
    #         # require "pry"; binding.pry
    #         linked_list.head.data
    #     elsif linked_list.head && linked_list.head.next_node.nil? && string_list[0]
    #         string_list.push(linked_list.data)
    #         string_list.join(" ")
    #     elsif !linked_list.head.next_node.nil?
    #         string_list.push(linked_list.head.data)
    #         linked_list = linked_list.head.next_node
    #         if linked_list.next_node.nil?
    #             # require "pry"; binding.pry
    #             string_list.push(linked_list.data)
    #             string_list.join(" ")
    #         else
    #             # require "pry"; binding.pry
    #             linked_list.to_string(linked_list, string_list)
    #         end
    #     end 
    #     require "pry"; binding.pry
    # end 

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

    # def count(counter = 0, og_head = 0, new_head = 0)
    #     # require "pry"; binding.pry
    #     if og_head != 0 && head.next_node.nil?
    #         require "pry"; binding.pry
    #         counter += 1
    #         self.head = og_head
    #         counter
    #     elsif og_head != 0 && head.next_node.next_node.nil?
    #         require "pry"; binding.pry
    #         counter += 1
    #         self.head = og_head
    #         counter
    #     elsif og_head != 0 && head.next_node.next_node.next_node.nil?
    #         require "pry"; binding.pry
    #         counter += 2
    #         self.head = og_head
    #         counter
    #     elsif head.nil?
    #         require "pry"; binding.pry
    #         counter
    #     elsif head.next_node.nil?
    #         require "pry"; binding.pry
    #         counter += 1
    #         counter 
    #     else
    #     # counter += 1
    #         if !self.head.next_node.nil? 
    #             counter += 1  
    #             # require "pry"; binding.pry
    #             if self.head.next_node.next_node.nil?
    #                 # require "pry"; binding.pry
    #                 # self.head = og_head
    #                 counter += 1
    #                 counter
    #             else
    #                 counter += 1
    #                 # require "pry"; binding.pry
    #                 og_head = self
    #                 new_head = self.head
    #                 self.count(counter, og_head, new_head)
    #             end
    #         # else
    #         #     require "pry"; binding.pry
    #         #     counter += 1
    #         #     self.head = og_head
    #         #     counter
    #         end 
    #     end 
    # end

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