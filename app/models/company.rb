class Company < ApplicationRecord
  has_many :wages, dependent: :destroy
  validates :name, presence: true

  def field_average(field)
    wages = self.wages.select { |wage| wage.field == field }
    wages.map!(&:wage)
    sum = wages.inject(0){|sum,x| sum + x }
    return 0 if wages.size == 0
    return sum / wages.size
  end

  # include AlgoliaSearch

  # algoliasearch do
  #   attribute :name
  # end
end
