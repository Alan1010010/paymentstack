# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Plan.destroy_all
puts 'Creating plans...'

starter = Plan.create!(
name: "Starter",
base_price: 99,
interval_days: 30,
description: "For getting started",
  )

business = Plan.create!(
name: "Business",
base_price: 199,
interval_days: 30,
description: "For your business",
  )

premium = Plan.create!(
name: "Premium",
base_price: 499,
interval_days: 30,
description: "For those who don't like limits",
  )

starter_annual = Plan.create!(
name: "Starter",
base_price: 990,
interval_days: 365,
description: "For getting started",
  )

business_annual = Plan.create!(
name: "Business",
base_price: 1990,
interval_days: 365,
description: "For your business",
  )

premium_annual = Plan.create!(
name: "Premium",
base_price: 4990,
interval_days: 365,
description: "For those who don't like limits",
  )


puts "All done y'all... Go get some"
