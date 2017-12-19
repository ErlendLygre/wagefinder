class Field < ApplicationRecord
  has_many :wages, dependent: :destroy
  validates :name, presence: true

  def companies_hash
    companies_hash = {}
    Company.all.each do |company|
      companies_hash[company.name] = company.field_average(self)
    end
    companies_hash.sort_by { |_key, value| value }.reverse
  end
end
