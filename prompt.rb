class Convert
  attr_reader :kilogram, :pound

  def initialize(kilogram = 0.0, pound = 0.0)
    self.kilogram = kilogram
    self.pound = pound
  end

  def kilogram=(value)
    @kilogram = value.round(3)
  end

  def pound=(value)
    @pound = value.round(3)
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
        self.kilogram = gets.chomp.to_f
        self.pound = mult_input(self.kilogram)
        puts "Your weight is #{self.pound} lb."
      when 2
        print "What is your weight in lb? "
        self.pound = gets.chomp.to_f
        self.kilogram = div_input(self.pound)
        puts "Your weight is #{self.kilogram} kg."
      when 3
        puts "Thank you for using my app!"
        break
      end
    end
  end

  def mult_input(kilogram)
    input = kilogram
    result = input * 2.20462
    return result.round(3)
  end

  def div_input(pound)
    input = pound
    result = input * 0.45359237
    return result.round(3)
  end
end
