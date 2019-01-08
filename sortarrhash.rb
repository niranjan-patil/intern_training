hash_array = [{numbers: [1,2,3,4,5]}, {numbers: [1,2,3,4]}, {numbers: [1]},{numbers: [1,2]}]
puts "Old hash"
puts hash_array
puts "New hash"
puts hash_array.sort_by{ |each_hash| each_hash[:numbers].length }
