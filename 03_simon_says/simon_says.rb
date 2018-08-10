def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(x, t=2)
	r = x
	t -= 1 
	t.times do |i|
		r += ' '+x
	end
	r
end

def start_of_word(w, x)
	w[0..x-1]
end

def first_word(str)
	r = str.split(" ")
	r[0]
end

def titleize(str)
	r = str.split(" ")
	x = r[0].capitalize
	y = ['the', 'and', 'over', 'at', 'in', 'on']
	(r.length-1).times do |i|
		if !y.include? r[i+1]
			x << ' '+r[i+1].capitalize
		else
			x << ' '+r[i+1]
		end
	end
	x
end
