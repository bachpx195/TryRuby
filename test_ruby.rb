# Generate a sequence of n numbers m*i + c and pass them to the block
def sequence2(n, m, c)
	i = 0
	while(i < n) # loop n times	
		yield i*m + c # pass next element of the sequence to the block
		i += 1
	end
end
# Here is how you might use this version of the method
sequence2(5, 2, 2) {|x| puts x } # Print numbers 2, 4, 6, 8, 10