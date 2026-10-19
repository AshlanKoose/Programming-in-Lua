--Run the factorial example. What happens to your program if you
--enter a negative number? Modify the example to avoid this problem

--defines a factorial function
function fact(n)
    if n == 0 then
        return 1
    elseif n < 0 then
            n = math.abs(n)
            print(n)
            return n * fact(n - 1)
    else
        return n * fact(n - 1)
    end
end

print("Enter a number:")
a = io.read("*n")
print(fact(a))

--a stack overflow error happens when a negative number is given.
--Added lines 8 through 11 to fix a negative number.
