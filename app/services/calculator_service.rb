class CalculatorService
  def initialize(args={})
    @wage = args[:wage].to_f
    @years = args[:years]
    @years_new = args[:years_new].to_i
  end

  def starting_wage
    @wage / (1+0.13 * Math::log(@years))
  end

  def new_wage
    starting_wage * (1+0.13 * Math::log(@years_new))
  end
end

# p CalculatorService.new({wage: 600000, years: 10, years_new: 30}).starting_wage.round
# p CalculatorService.new({wage: 600000, years: 10, years_new: 30}).new_wage.round

# p CalculatorService.new({wage: 75000, years: 17, years_new: 10}).starting_wage.round
# p CalculatorService.new({wage: 75000, years: 17, years_new: 30}).new_wage.round
