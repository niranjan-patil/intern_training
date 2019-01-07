puts "Enter the first number"
num1 = gets.to_f
if(!(Float === num1))
	puts 'Invalid input--Characters not allowed'
	puts "Enter the first number again"
	num1 = gets.to_f
end
num1 = num1.to_f

puts "Enter the second number"
num2 = gets.to_f
if(!(Float === num2))
	puts 'Invalid input--Characters not allowed'
	puts "Enter the second number again"
	num2 = gets.to_f
end
num2 = num2.to_f

puts "Enter the operation to do (+/-/*/)"
oper = gets.chomp
case oper
	when "+"
		puts "Result: #{num1+num2}"
	when "-"
		puts "Result: #{num1-num2}"
	when "*"
		puts "Result: #{num1*num2}"
	when "/"
		puts "Result: #{num1/num2}"
end
