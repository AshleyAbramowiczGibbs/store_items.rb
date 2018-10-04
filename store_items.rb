# toothbrush1 = {:color => "pink", :brand => "crest", :price => 2}
# toothbrush2 = {:color => "green", :brand => "colgate", :price => 3}
# toothbrush2 = {:color => "purple", :brand => "Arm and Hammer", :price => 4}
# puts "this toothbrush is #{toothbrush1[:color]}. It's made by #{toothbrush1[:brand]} and costs #{toothbrush1[:price] dollars}"

class Toothbrushes
attr_reader :color, :brand, :price, :instock
attr_writer :color, :brand, :price, :instock

  def initialize(color, brand, price, instock)
    @color = color
    @brand = brand
    @price = price
    @instock = instock
  end

def info
  puts "My toothbrush costs #{price}. It's made by #{brand} and it's #{color}."
end

def on_sale
  p @price / 2
end

def instock_status
  puts @instock
end

end

toothbrush1 = Toothbrushes.new("pink", "crest", 2, true)
toothbrush2 = Toothbrushes.new("purple", "colgate", 1.5, false)
toothbrush3 = Toothbrushes.new("green", "Walgreen", 3, true)

toothbrush1.info
toothbrush2.on_sale
toothbrush3.instock_status

