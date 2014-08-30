def translate(string)
    transformed = []
    suffix = "ay"
    words = string.split(' ')
    words.each do |x|
        vowel_num = x =~ /[aeiou]/
        if x[vowel_num] == 'u' && x[vowel_num - 1] == 'q'
            cut = x.slice!(0..vowel_num)
            transformed << x + cut + suffix
        else
            cut = x.slice!(0..vowel_num - 1)
            transformed << x + cut + suffix  
        end
    end
    transformed.join(' ')
end
