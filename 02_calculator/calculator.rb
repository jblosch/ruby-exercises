def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(num)
	total = 0
	num.each do |i|
		total += i
	end
	total
end


def multiply(*a)
	total = 1
	a.each do |i|
		total *= i
	end
	total
end

def power(a,b)
	a**b
end

def factorial(num)
	total = 1
	if num > 0
		while num > 0 do
			total *= num
			num = num - 1
		end
	else
		total = 0
	end
	total
end