class Calculator
	def initialize(x,y)
		@num1 = x
		@num2 = y
	end
	def sum
		@num1 + @num2
	end
	def mult
		@num1 * @num2
	end
	def divide
		@num1 / @num2
	end
	def subtract
		@num1 - @num2
	end
	def all_oper
		arr = []
		arr << sum
		arr << subtract
		arr << mult
		arr << divide
		arr
	end
	def self.list_oper
		puts "Available operations are '+','-','*','/'"
	end
	def check_oper(oper)
		['+','-','*','/'].include?(oper)
	end
end

begin
	puts 'Enter the first number'
	num1 = gets.chomp
	num1 = Integer(num1)
	puts 'Enter the second number'
	num2 = gets.chomp
	num2 = Integer(num2)
	Calculator.list_oper
rescue
	puts 'Invalid input'
	retry
end
obj = Calculator.new(num1,num2)
loop do
	puts 'Enter the operation(Type all for all operations and stop to terminate)'
	oper = gets.chomp
	break if(oper=='stop')
	#oper = gets.to_i
	case oper
	when '+'
		puts "Addition: #{obj.sum}"
	when '-'
		puts "Subtraction: #{obj.subtract}"
	when '*'
		puts "Multiplication: #{obj.mult}"
	when '/'
		puts "Division: #{obj.divide}"
	when 'all'
		arr = obj.all_oper
		puts "Addition: #{arr[0]},Subtraction: #{arr[1]},Multiplication: #{arr[2]},Division: #{arr[3]}"
	else
		puts 'Invalid input'
	end 
end