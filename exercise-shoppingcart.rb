require 'pry'

class ShoppingCart
  def initialize
    @items = []
  end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      price = @price
  end
end

class Fruit < Item
  attr_reader :price
  def price
      price = @price
      t = Time.now   #=> 2007-11-20 02:35:35 -0600
      if t.wday == 6 || t.wday == 7
      	price = price * 0.9
      end
      price
  end
end

class Houseware < Item
  attr_reader :price
  def price
      price = @price
      if price > 100 
      	price = price * 0.95
      end
      price
  end
end

class ShoppingCart
  def initialize
    @items=[]
  end
  def add_item(item)
    @items.push(item)
  end

  def checkout
    totalprice = 0
    @items.each do |item| 
        totalprice += item.price
    end
    puts "Your total today is $#{totalprice}. Have a nice day!"
  end
end

joshs_cart = ShoppingCart.new
banana = Fruit.new("Banana", 10)
vaccuum = Houseware.new("Vaccuum", 150)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
anchovies = Item.new("Anchovies", 2)

joshs_cart.add_item(oj)
joshs_cart.add_item(rice)
joshs_cart.add_item(vaccuum)
joshs_cart.checkout

# Your total today is $11. Have a nice day!

binding.pry