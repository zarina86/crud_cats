require "faker"

# generate 30 cats
(1..30).each do |id|
  Cat.create(
    id: id,
    name: Faker::Creature::Cat.name,
    color: %w[black grey lilac white fawn cinnamon lavender red chocolate cinnamon].sample,
    breed: Faker::Creature::Cat.breed
  )
end