export sine, cosine

"""
    sine(x)
Calculate the sine of an angle `x` given in radians
"""
function sine(x::Number)
    n = 8
    total = 0
    for i in 0:n
        total += (-1)^i*x^(2i+1)/factorial(2i + 1)
    end
    total
end

function cosine(x::Number)
   n = 9
   mapreduce(+, 0:n) do i
        (-1)^i*x^(2i)/factorial(2i)
   end 
end