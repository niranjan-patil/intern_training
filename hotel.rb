Box8 = {"Rajma"=>30, "Vada_Pav"=>50, "Dal"=>20}
Locavore = {"Dal"=>10, "Vada_Pav"=>30, "Sabji"=>40}
Flavours = {"Ice_cream"=>10, "Sandwich"=>20, "Burger"=>30, "Vada_Pav"=>30}
Hotel_list = [Box8,Locavore,Flavours]
puts "Enter the dishname:"
dishname = gets.chomp
puts "Enter the price:"
dishprice = gets.to_i
for i in Hotel_list
	
	if(!(i[dishname] == nil))
	 if(i[dishname]<=dishprice)
	   puts i
	 end
	end
end
