class Field < ApplicationRecord
  has_many :wages, dependent: :destroy
  validates :name, presence: true
end
