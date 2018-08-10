class Timer
	def initialize
		@seconds = 0
	end

	def seconds=(secs)
		@seconds = secs
		@seconds
	end

	def time_string
		secs = @seconds
		h = secs/3600
		min = (secs-h*3600)/60
		s = secs-h*3600-min*60
		x = ''
		if h < 10
			x += '0'+ h.to_s + ':'
		else
			x += h.to_s + ':'
		end
		if min < 10
			x += '0'+ min.to_s + ':'
		else
			x += min.to_s + ':'
		end
		if s < 10
			x += '0'+ s.to_s 
		else
			x += s.to_s 
		end
		x
	end

	def seconds
		@seconds
	end
end

@timer = Timer.new
p @timer.time_string