require_relative "convert"

class Convert
  def initialize
    @kilogram = []
  end
  def run
    loop do
      puts "\n"
      puts "Welcome to Unit Converter"
      puts "1. Convert from Kg to lb"
      puts "2. Convert from lb to Kg"
      puts "3. Exit"
      puts "Choose an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        mult_input
      when 2 
        div_input
      when 3
        puts "Thank you for using my app!"
        break
     
      end
    end
  end
end

def mult_input
  print "what is your weight in Kg?"
  kilogram = gets.chomp
input = kilogram.to_i
result = input * 2.20462
puts " your weight is #{result} lb."
end

def div_input
  print "What is your weight in lb? "
  pound = gets.chomp
  input = pound.to_i
  result = input * 0.45359237
  puts "Your weight is #{result} kg."
end
