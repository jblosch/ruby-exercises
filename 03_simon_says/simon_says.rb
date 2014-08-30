def echo(say)
	say.to_s
end

def shout(say)
	say.to_s.upcase
end

def repeat(say, num = 2)
    ([say] * num).join(' ')
end

def start_of_word(word, num)
    answer = []
    result = word.split('')
    while num > 0
        answer << result[num - 1]
        num = num - 1
    end
    answer.reverse.join
end

def first_word(word)
	result = word.split(' ')
	result[0]
end

def titleize(string)
    words = string.split(' ')
    result = words.map do |x|
        if x == 'And' || x == 'and' || x == 'Over' || x == 'over' || x == 'The' || x == 'the'
            x.downcase
        else
            x.capitalize
        end
    end
    first = result[0].capitalize
    result.shift
    result.unshift(first)
    result.join(' ')
end 
