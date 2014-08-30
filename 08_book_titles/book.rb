class Book
    attr_accessor :title
        
    def title
        words = @title.split
        words.map do |x|
            x.capitalize!
            if x == "The" || x == "And" || x == "A" || x == "An" || x == "In" || x == "Of"
                x.downcase!
            else
                x.capitalize!
            end
        end
    words.first.capitalize!
    words.join(' ')
	end
end