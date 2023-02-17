class Cat < ApplicationRecord
  validates :name, presence: true
  validates :color, presence: true
  validates :breed, presence: true
  
  def self.ransackable_attributes(auth_object = nil)
    %w(name color breed)
  end
end
