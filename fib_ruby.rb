def fibonacci(n)
    a = 0
    b = 1

    # Computes Fibonacci number in the desired postion.
    n.times do
    	temp = a
    	a = b
    	
    	# Adds up the previous two numbers in sequence.
    	b = temp + b
    end

    return a
end

# Write 90 Fibonacci numbers in sequence
90.times do |n|
    result = fibonacci(n)
    puts result
end
