# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5000.times do |n|
  item = Product.create!(
        name: Faker::App.name,
        brand: Faker::Appliance.brand,
        model: Faker::Alphanumeric.alphanumeric(10),
        year: Faker::Number.between(1990, 2018),
        ram: [1000, 5000, 10000, 50000, 100000].sample,
        external_storage: [1, 10, 100, 1000, 10000].sample)
end