# toothbrush1 = {:color => "pink", :brand => "crest", :price => 2}
# toothbrush2 = {:color => "green", :brand => "colgate", :price => 3}
# toothbrush2 = {:color => "purple", :brand => "Arm and Hammer", :price => 4}
# puts "this toothbrush is #{toothbrush1[:color]}. It's made by #{toothbrush1[:brand]} and costs #{toothbrush1[:price] dollars}"

class Toothbrushes

  def initialize(color, brand, price, instock)
    @color = color
    @brand = brand
    @price = price
    @instock = instock
  end

def get_color
  @color
end

def get_brand
  @brand
end

def get_price
  @price
end

def get_instock
  @instock
end

def info
  puts "My toothbrush costs #{get_price}. It's made by #{get_brand} and it's #{get_color}."
end

def on_sale
  p @price / 2
end
end

toothbrush1 = Toothbrushes.new("pink", "crest", 2, true)
toothbrush2 = Toothbrushes.new("purple", "colgate", 1.5, false)
toothbrush3 = Toothbrushes.new("green", "Walgreen", 3, true)

toothbrush1.info
toothbrush2.on_sale
