arr = Array.new
puts 'Enter the numbers:(Enter stop if finished)'
loop do
	begin
		input = gets.chomp
		break if(input=='stop')
		num = Integer(input)
		arr << num
	rescue
		puts 'Invalid input'
	retry
	end
end
operation = ['+','-','*','/']
puts 'Enter the operation'
oper = gets.chomp
unless operation.include?(oper)
	puts 'Invalid operation'
	puts 'Enter the operation'
	oper = gets.chomp
end
puts arr.inject(oper.to_sym)	