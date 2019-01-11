#chmod u=rwx,g=rx,o=r myfile
#command to change permissions of file
cnt=0
begin
	cnt=cnt+1
	puts 'Enter the file name(Enter stop to terminate):'
	file_name = gets.chomp
	loop do
		#raise 'File not found' if(File.exist?(file_name) == false)
		#raise 'Read not allowed' if(File.readable?(file_name) == false)
		puts 'Enter the word to find'
		word = gets.chomp
		break if(word == 'stop')
		flg=0
		File.open(file_name).each_with_index do |line, i|
			arr = line.split(/[^A-Z^a-z^']/)
			if(arr.include?(word))
				puts "Found on line no #{(i + 1)}"
				flg=1
			end
		end
		puts 'Word not found' if(flg == 0)
	end
rescue Errno::ENOENT
	puts "File not found"
	retry if(cnt<4)
	puts "U dumb or what?"
rescue Errno::EACCES
	puts "File read not allowed"
	retry if(cnt<3)
	puts "U dumb or what?"
end