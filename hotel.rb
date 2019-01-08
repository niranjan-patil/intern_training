Hotels ={ "Box8" => {"Rajma"=>30, "Vada_Pav"=>50, "Dal"=>20},"Locavore" => {"Dal"=>10, "Vada_Pav"=>30, "Sabji"=>40},
"Flavours" => {"Ice_cream"=>10, "Sandwich"=>20, "Burger"=>30, "Vada_Pav"=>30}}
puts "Enter the dishname:"
dishname = gets.chomp
puts "Enter the price:"
dishprice = gets.to_i
Hotels.each do |key,value|
		unless Hotels[key][dishname] == nil
			puts key if(Hotels[key][dishname]<=dishprice)
		end
end
