#write your code here
def echo input
    input.downcase
end

def shout input
    input.upcase
end

def repeat input, repeat=2
    (input + " ") * (repeat - 1 ) + input
end

def start_of_word input,n
      input[0,n]
end 

def  first_word input 
       input.split(" ")[0]
end

def titleize input  

    array  = input.split(" ")
    count = 0 
    array.each do |word| 
        if count == 0 
           word.capitalize!
           count =1 
        elsif word == "add" || word == "over" ||   word== "the"
            word.downcase
        else 
            word.capitalize!
        end
        array.split(" ")
    end
end