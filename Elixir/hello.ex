# defmodule M do
# 	def main do
# 		name = IO.gets "What is your name? "
# 		IO.puts "Hello #{name}"
# 	end
# end

defmodule M do
	def main do
		data_stuff()
	end

	def data_stuff do
		my_int = 123
		my_float = 3.14159
		IO.puts "Integer: #{is_integer(my_int)}"
		IO.puts "Float: #{is_float(my_float)}"
		IO.puts "Atom: #{is_atom(:MyAtom)}"
		one_to_10 = 1..10
	end
end
