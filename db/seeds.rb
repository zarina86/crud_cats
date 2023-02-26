require "faker"

Cat.destroy_all
# generate 10 cats
(1..10).each do |id|
  Cat.create(
    id: id,
    name: Faker::Creature::Cat.name,
    color: %w[black grey lilac white fawn cinnamon lavender red chocolate].sample,
    breed: Faker::Creature::Cat.breed
  )
end