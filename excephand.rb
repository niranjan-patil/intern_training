cnt=0
begin
	cnt=cnt+1
	puts 'Enter the file name:'
	file_name = gets.chomp
	raise 'File not found' if(File.exist?(file_name) == false)
	raise 'Read not allowed' if(File.readable?(file_name) == false)
	puts 'Enter the word to find'
	word = gets.chomp
	File.open(file_name).each_with_index do |line, i|
		arr = line.split(/[^A-Z^a-z]/)
		puts (i + 1) if(arr.include?(word))
	end
rescue StandardError => e
	puts e.message
retry if(cnt<4)
	puts "U dumb or what?"
end