class Timer
attr_accessor :seconds

    def initialize
		@seconds = 0
	end

	def time_string
		@hour = @seconds / 3600
		@minute = (@seconds / 60) - (@hour * 60)
		@second = @seconds - (((@hour * 60) + @minute) * 60)
        @hour = "0" + @hour.to_s unless @hour > 9
        @minute = "0" + @minute.to_s unless @minute > 9
        @second = "0" + @second.to_s unless @second > 9
        "#{@hour}:#{@minute}:#{@second}"
	end
end