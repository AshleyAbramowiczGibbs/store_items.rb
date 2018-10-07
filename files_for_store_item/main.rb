require "./class.rb"
require "./temporary_class.rb"
require "./module.rb"


toothbrush1 = Toothbrushes.new({color: "pink", brand: "crest", price: 2, instock: true})
toothbrush2 = TemporaryToothbrush.new({color: "purple", brand: "colgate", price:1.5, instock: false, life: "1 Year"})
toothbrush3 = Toothbrushes.new({color: "green", brand: "Walgreen", price:3, instock: true})

toothbrush1.info
toothbrush2.on_sale
toothbrush3.instock_status
toothbrush2.how_long
p toothbrush2