function factorial(n)
  if n == 1 then
    return 1
  else
    return n * factorial(n-1)
  end
end

-- print(factorial(4))
-- 5! = 5*4*3*2*1 = 120

print("Enter a number:")
a = io.read("*n") -- reads a number
print(factorial(a))
