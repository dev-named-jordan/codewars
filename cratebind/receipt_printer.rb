class ReceiptPrinter
  COST = {
    'meat' => 5,
    'milk' => 3,
    'candy' => 1,
  }

  TAX = 0.05

  def initialize(output: $stdout, items:)
    @output = output
    @items = items
  end

  def cost_for_like_products(data)
    data.to_i
  end

  def print
    subtotal = items.reduce(0) do |sum, item|
      item_cost = COST[item]
      output.puts "#{item}: #{sprintf('$%.2f', item_cost)}"

      sum + cost_for_like_products(item_cost)
    end

    output.puts divider
    output.puts "subtotal: #{sprintf('$%.2f', subtotal)}"
    output.puts "tax: #{sprintf('$%.2f', subtotal * TAX)}"
    output.puts divider
    output.puts "total: #{sprintf('$%.2f', subtotal + (subtotal * TAX))}"
  end

  private

  attr_reader :output, :items

  def divider
    '-' * 13
  end
end
