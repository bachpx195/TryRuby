def test
	puts "You are in the method"
	yield
		puts "You are again back to the method"
	yield
end

#test { puts "You are in the block" }

#result
# You are in the method
# You are in the block
# You are again back to the method
# You are in the block

def test2
	yield(5) 
	puts "You are in the method test2"
	yield(100)
end

#test2{ |i| puts "You are in the block #{i}"}

#result
# You are in the block 5
# You are in the method test2
# You are in the block 100


def test3(agr1, &block)
	puts agr1
	block.call(2)
end

test3(3) { |num| puts "this is #{num}" }

#result
# 3
# this is 2
