class Array
	
	def my_inject(total=nil)
		array = self.clone #why does this need the .clone method to work?
		total = array.shift if total == nil
		array.each do |element|
			total = yield(total, element) #is this passing arguments in between the pipes of the block?
		end
		total
	end

end