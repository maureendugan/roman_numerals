def roman_numerals(number)
  symbol = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }
  result = ""

  if number > 3999
    result = "The Romans didn't think that far ahead, please choose a smaller number."
  elsif number == 0
    result = "Haha, the Romans didn't come up with zero!"
  else
    until number == 0
      symbol.each do |digit, letter|
        while number >= digit
          result << letter
          number = number - digit
        end
      end
    end
  end
  result
end


while true
  puts "Enter an Arabic Number!"
  input = gets.chomp
  if input == '\quit'
    exit
  else 
    puts "#{roman_numerals(input.to_i)}"
  end
end

