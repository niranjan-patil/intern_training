Box8 = {"Rajma"=>30, "Vada_Pav"=>50, "Dal"=>20}
Locavore = {"Dal"=>10, "Vada_Pav"=>30, "Sabji"=>40}
Flavours = {"Ice_cream"=>10, "Sandwich"=>20, "Burger"=>30, "Vada_Pav"=>30}
puts "Enter the dishname:"
dishname = gets.chomp
puts "Enter the price:"
dishprice = gets.to_i
if(!(Box8[dishname] == nil))
 if(Box8[dishname]<=dishprice)
   puts "Box8"
 end
end
if(!(Locavore[dishname] == nil))
 if(Locavore[dishname]<=dishprice)
   puts "Locavore"
 end
end
if(!(Flavours[dishname] == nil))
 if(Flavours[dishname]<=dishprice)
   puts "Flavours"
 end
end