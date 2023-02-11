class Cat < ApplicationRecord
  validates :name, presence: true
  validates :color, presence: true
  validates :breed, presence: true
end
