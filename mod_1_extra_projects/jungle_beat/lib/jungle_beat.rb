class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end 

  def append(string)
    string_array = string.split(" ")
    string_array.select do |word|
      @list.append(word)
    end 
    string
  end

  def count
    @list.count
  end

  def play
    `say -r 200 -v Fiona "#{@list.to_string}"`
  end
end 