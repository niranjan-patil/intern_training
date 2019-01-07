puts 'Method for map' 
def My_map(arr)
	result = Array.new
	arr.each do |element|
		temp=yield(element)
			result.push(temp)
	end
	result
end
arr = [1,2,3,4,5]
puts "result is #{My_map(arr) { |num| num.even? }}"

puts 'Method for map!' 
def My_mapbang(arr)
	i=0
	arr.each do |element|
		arr[i]=yield(element)
		i=i+1
	end
	arr
end
arr = [1,2,3,4,5]
puts "result is #{My_mapbang(arr) { |num| num*2 }}"
puts arr

puts 'Method for my_select'
def my_select(arr)
	result = Array.new
	arr.each do |element|
		if(yield(element))
			result.push(element)
		end
	end
	result
end
arr = [1,2,3,4,5]
puts my_select(arr) { |num| num.even? }

puts 'Method for map' 
def My_selectbang(arr)
	i=0
	arr.each do |element|
		if(!(yield(element)))
			arr.slice!(i)
		end
		i=i+1
		end
	arr
end
arr = [1,2,3,4,5]
puts "result is #{My_selectbang(arr) { |num| num.even? }}"
puts arr