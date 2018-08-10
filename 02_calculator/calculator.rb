def add(x, y)
	x+y
end

def subtract(x, y)
	x-y
end

def multiply(x, y)
	x*y
end

def sum(arr)
	s = 0
	arr.length.times do |i|
		s += arr[i]
	end
	s
end

def power(x, y)
	(y-1).times do
		x *= y
	end
end

def factorial(x)
	if x == 1
		return 1
	end
	x*factorial(x-1)
end
