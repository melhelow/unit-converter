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
        print "What is your weight in Kg? "
        kilogram = gets.chomp.to_f
        puts "Your weight is #{mult_input(kilogram)} lb."
      when 2 
        print "What is your weight in lb? "
        pound = gets.chomp.to_f
        puts "Your weight is #{div_input(pound)} kg."
      when 3
        puts "Thank you for using my app!"
        break
      end
    end
  end

  def mult_input(kilogram)
    input = kilogram
    result = input * 2.20462
    return result
  end

  def div_input(pound)
    input = pound
    result = input * 0.45359237
    return result
  end
end
