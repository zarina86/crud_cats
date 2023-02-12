require "faker"

Cat.destroy_all
# generate 1000 cats
(1..1000).each do |id|
  Cat.create(
    id: id,
    name: Faker::Creature::Cat.name,
    color: %w[black grey lilac white fawn cinnamon lavender red chocolate cinnamon].sample,
    breed: Faker::Creature::Cat.breed
  )
end