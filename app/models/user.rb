class User < ApplicationRecord
  has_one :registration
  has_one :wage
end
