# class Hotel to handle name and menu of hotel
class Hotel
  attr_accessor :hotel_name

  def initialize(h_name, h_menu)
    @hotel_name = h_name
    @hotel_menu = h_menu
  end

  def check_price(dishname, dishprice)
    @hotel_menu[dishname] <= dishprice if @hotel_menu[dishname]
  end
end

box8_menu = { 'Rajma' => 30, 'Vada_Pav' => 50, 'Dal' => 20 }
box8 = Hotel.new('Box8', box8_menu)

locavore_menu = { 'Dal' => 10, 'Vada_Pav' => 30, 'Sabji' => 40 }
locavore = Hotel.new('Locavore', locavore_menu)

flavours_menu = { 'Ice_cream' => 10,
                  'Sandwich' => 20,
                  'Burger' => 30,
                  'Vada_Pav' => 30 }
flavours = Hotel.new('Flavours', flavours_menu)

hotel_list = [box8, locavore, flavours]

puts 'Enter the dishname'
dishname = gets.chomp
puts 'Enter the price'
dishprice = gets.chomp.to_i

hotel_list.each do |hotel|
  puts hotel.hotel_name if hotel.check_price(dishname, dishprice)
end
