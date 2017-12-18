class CompanyAverageService
  def initialize(field = current_user.wage.field, company = current_user.wage.company)
    @field = field
    @company = company
  end

  def company_avg
    company_wages = Wage.where(company: @company)
    company_wage_by_field = company_wages.select{ |wage| wage.field == @field }
    company_wage_by_field.map!(&:wage)
    company_total = company_wage_by_field.inject(0){|sum,x| sum + x }
    return 0 if company_total.size == 0
    return company_total / company_wage_by_field.size
  end
end
