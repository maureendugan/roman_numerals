require('rspec')
require('roman_numerals')

describe('roman_numerals') do
  it('writes II for 2') do 
    roman_numerals(2).should(eq("II"))
  end

  it('writes VI for 6') do
    roman_numerals(6).should(eq("VI"))
  end

  it('writes IV for 4') do
    roman_numerals(4).should(eq("IV"))
  end

  it('writes XCIX for 99') do
    roman_numerals(99).should(eq("XCIX"))
  end
  
  it('writes multiple letters for number including 8') do
    roman_numerals(888).should(eq("DCCCLXXXVIII"))
  end
end
