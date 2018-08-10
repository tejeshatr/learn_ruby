def tr(w)
	vowels = 'aeiouAEIOU'
	i = 0
	while !(vowels.include? w[i])
		if w[i..i+1] == 'qu'
			i += 1
		end
		i += 1
	end
	p i
	if i != 0
		w[i..-1]+w[0..i-1]+'ay'
	else
		w+'ay'
	end
end


def translate(str)
	r = str.split(" ")
	r.length.times do |i|
		r[i] = tr(r[i])
	end
	r.join(" ")
end