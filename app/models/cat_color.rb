class CatColor < ApplicationRecord
  validates :color, presence: true, uniqueness: true
end
