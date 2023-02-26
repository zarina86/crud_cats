class CatColor < ApplicationRecord
  #belongs_to :cat
  
  validates :color, presence: true, uniqueness: true
end
