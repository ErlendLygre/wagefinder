class Wage < ApplicationRecord
  belongs_to :user
  belongs_to :field
  belongs_to :company
end
