class Wage < ApplicationRecord
  belongs_to :user
  belongs_to :field
  belongs_to :company
  validates :wage, presence: true, inclusion: 100..10000000
  validates :years_worked, presence: true, inclusion: 1..80
end
