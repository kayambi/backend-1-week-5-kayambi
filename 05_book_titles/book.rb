class Book
	attr_reader :title
	def title= title
		array = title.split(" ")
		first = true
		array.map! do |word|
			word.downcase
			if first
				first = false
				word.capitalize
			elsif ["the", "a", "an", "and", "in", "of","j"].include? word
				word
			else
				word.capitalize
			end
		end
		@title = array.join(" ")
	end
end