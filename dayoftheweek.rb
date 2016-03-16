require 'date'

class Date
  def dayname
     DAYNAMES[self.wday]
  end

  def abbr_dayname
    ABBR_DAYNAMES[self.wday]
  end
end

today = Date.today

puts today.dayname
puts today.abbr_dayname

puts "-------------------"

t = Time.now   #=> 2007-11-20 02:35:35 -0600
puts t.wday  
puts t