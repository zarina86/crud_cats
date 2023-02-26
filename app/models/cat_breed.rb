class CatBreed < ApplicationRecord
  #belongs_to :cat
  
  validates :breed, presence: true, uniqueness: true
end
