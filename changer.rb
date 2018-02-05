class Changer

	def self.make_change(int_total_change)
    change = [25,10,5,1]
    answer = []
    change.each {|divisible|
      answer << int_total_change / divisible
      int_total_change %= divisible
    }
    answer = answer.each_with_index.map {|val,index|
      x = []
    	val.times { x << 25} if index == 0
      val.times { x << 10} if index == 1
      val.times { x << 5} if index == 2
      val.times { x << 1} if index == 3
      x
    }
    answer.flatten!
  end
end
