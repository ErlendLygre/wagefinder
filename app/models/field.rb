class Field < ApplicationRecord
  has_many :wages, dependent: :destroy
end
