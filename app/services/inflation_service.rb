class InflationService
   def initialize(wage, years)
    @years = years
    @wage = wage
   end

   def inflation
    ((@wage * 1.024**@years) - @wage).to_i
  end
end
