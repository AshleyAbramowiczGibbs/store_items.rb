# toothbrush1 = {:color => "pink", :brand => "crest", :price => 2}
# toothbrush2 = {:color => "green", :brand => "colgate", :price => 3}
# toothbrush2 = {:color => "purple", :brand => "Arm and Hammer", :price => 4}
# puts "this toothbrush is #{toothbrush1[:color]}. It's made by #{toothbrush1[:brand]} and costs #{toothbrush1[:price] dollars}"

module Seasonable
  def fall_colors
    puts "this is a fall colored toothbrush"
  end
end 

class Toothbrushes
  attr_reader :color, :brand, :price, :instock
  attr_writer :color, :brand, :price, :instock

  def initialize(input_hash)
    @color = input_hash [:color]
    @brand = input_hash [:brand]
    @price = input_hash [:price]
    @instock = input_hash [:instock]
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

class TemporaryToothbrush < Toothbrushes
  def initialize(input_hash)
    super
    @life = input_hash [:life]
  end

  def how_long
    puts "this will last for #{@life}."
  end

  include Seasonable
end

toothbrush1 = Toothbrushes.new({color: "pink", brand: "crest", price: 2, instock: true})
toothbrush2 = TemporaryToothbrush.new({color: "purple", brand: "colgate", price:1.5, instock: false, life: "1 Year"})
toothbrush3 = Toothbrushes.new({color: "green", brand: "Walgreen", price:3, instock: true})

toothbrush1.info
toothbrush2.on_sale
toothbrush3.instock_status
toothbrush2.how_long
p toothbrush2


