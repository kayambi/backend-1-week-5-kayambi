class Timer

	def seconds
		@seconds
	end

	def seconds= n
		@seconds = n
	end

	def initialize
		@seconds = 0
	end

	def padded n 
		if n < 10
			"0" + n.to_s
		else 
			n.to_s
		end
	end

	def time_string
		hour = 0 
		min = 0
		seconds = 0
		if @seconds < 60
			seconds = @seconds
		elsif @seconds < 3600
			min = @seconds/60
			seconds = @seconds%60
		else
			hour = @seconds/3600
			seconds = @seconds%3600
			min = seconds/60
			seconds = seconds%60
		end
		padded(hour) +":"+ padded(min) +":" + padded(seconds)
	end
end