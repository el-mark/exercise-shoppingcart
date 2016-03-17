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

bananas = Fruit.new("Bananas",10)
orange = Fruit.new("Orange",10)
rice = Item.new("Rice",1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner",150)
anchovies = Item.new("Anchovies",2)

puts '''
bananas = Fruit.new("Bananas",10)
orange = Fruit.new("Orange",10)
rice = Item.new("Rice",1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner",150)
anchovies = Item.new("Anchovies",2)

'''
puts bananas.price
puts orange.price
puts rice.price
puts vacuum_cleaner.price
puts anchovies.price

binding.pry