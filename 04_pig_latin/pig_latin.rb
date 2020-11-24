#write your code here
def translate string
    # wrapp the s tring an array then apply split method
	array = string.split(" ")
	array.map! do |word|
		word.downcase!
		count = 0
		length = word.length
        if 'aoiue'.include? word[count]
            # Print out vowel 
			this_word = word + 'ay'
		else
            count += 1   
            # consonate by default will true
            consonate = true
            # While cons 
            while consonate
                # check if the who word counted does not equal to "qu" 
				if ('aoiue'.include? word[count]) && (word[count-1..count] != "qu")
					consonate = false 
					this_word = word[count...length] + word[0...count] + "ay"
				else
					count += 1
				end
			end
		end
		word = this_word
	end
    array.join(" ")
end