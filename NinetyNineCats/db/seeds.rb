# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end

GENDER = ["M", "F"]

Cat.destroy_all
CatRentalRequest.destroy_all

# Create Cats
10.times do
  cat = Cat.create(
    name: Faker::GameOfThrones.character,
    sex: GENDER.sample,
    color: Cat::COLORS.sample,
    birth_date: time_rand,
    description: Faker::RickAndMorty.quote
  )

  CatRentalRequest.create(
    cat_id: cat.id,
    start_date: time_rand(3.days.from_now.time,  2.weeks.from_now.time),
    end_date: time_rand(3.weeks.from_now.time,  5.weeks.from_now.time)
  )
end
