class User < ApplicationRecord
  belongs_to :registration
  has_one :wage
end
