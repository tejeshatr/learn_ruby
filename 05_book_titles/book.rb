class Book
	attr_reader :title

	def title=(str)
		littles = ['a', 'an', 'the', 'and', 'or', 'in', 'on', 'of']
		res = str.split(" ")
		x = ''
		(res.length).times do |i|
			if littles.include? res[i]
				x += ' '+res[i]
			else
				x += ' '+res[i].capitalize
			end
		end

		@title = x[1].upcase + x[2..-1]
		p @title
	end

	def title
		@title
	end
end
