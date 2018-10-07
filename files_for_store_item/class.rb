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