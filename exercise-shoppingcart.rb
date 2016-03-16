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

  def final_price
      final_price = @price - fruit.discount #- houseware.discount 
  end
end

class Houseware < Item
  attr_reader :discount
  def discount
      discount = 0
      t = Time.now   #=> 2007-11-20 02:35:35 -0600
      if t == 6 || t == 7
      	discount = item.price * 0.1
      else 
      	discount = 0
      end
      discount
  end
end

class Fruit < Item
  attr_reader :discount
  def discount
      discount = 0
      if item.price > 100 
      	discount = item.price * 0.05
      else 
      	discount = 0
      end
      discount
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

puts bananas.final_price
#puts orange.final_price
#puts rice.final_price
#puts vacuum_cleaner.final_price
#puts anchovies.final_price