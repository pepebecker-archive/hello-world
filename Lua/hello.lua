function fact (n)
	if n == 0 then
		return 1
	else
		return n * fact(n-1)
	end
end

print("enter a number:")
n = io.read("*number")
print(fact(n))

a = "one string"
b = string.gsub(a, "one", "another")
print(a)
print(b)

c = print
c("c is a "..tostring(type(c)))

