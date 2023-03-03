class CatBreed < ApplicationRecord
  validates :breed, presence: true, uniqueness: true
end
