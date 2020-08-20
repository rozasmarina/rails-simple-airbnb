puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

10.times do
  Flat.create!(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    description: Faker::Hipster.paragraphs.flatten,
    price_per_night: Faker::Number.number(digits: 3),
    number_of_guests: Faker::Number.between(from: 1, to: 10),
    picture_url: Faker::Placeholdit.image
  )
end