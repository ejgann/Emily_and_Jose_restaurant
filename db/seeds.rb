# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.destroy_all
Food.destroy_all
Order.destroy_all

# CUSTOMERS
    jose = Customer.create(name: "Jose")
    emily = Customer.create(name: "Emily")
    john = Customer.create(name: "John")
    jane = Customer.create(name: "Jane")


# FOODS
    lasagna = Food.create(name: "Lasagna", description: "Italian dish")
    hamburger = Food.create(name: "Hamburger", description: "American fare")
    salad = Food.create(name: "Salad", description: "Healthy stuff")
    ice_cream = Food.create(name: "Ice Cream", description: "Sweet stuff")


# ORDERS
    Order.create(customer_id: jose.id, food_id: salad.id)
    Order.create(customer_id: emily.id, food_id: lasagna.id)
    Order.create(customer_id: john.id, food_id: hamburger.id)
    Order.create(customer_id: jane.id, food_id: ice_cream.id)