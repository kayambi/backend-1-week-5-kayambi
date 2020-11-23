#write your code here
def add (x,y)
     x + y 
end 
def subtract(x,y)
    x - y 
end

arr = []
def sum(arr)
    arr.reduce(0, :+)
end

def multiply (*numbers)
    numbers.reduce(:*)
end

def power(x,y)
     x**y
end