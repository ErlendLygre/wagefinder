class Company < ApplicationRecord
  has_many :wages, dependent: :destroy
end
