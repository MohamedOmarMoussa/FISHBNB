# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Poisson.destroy_all
User.destroy_all

puts "Creating users..."
annie = User.new({email: "annie@yopmail.com", password: "123456"})
lucie = User.new({email: "lucie@yopmail.com", password: "123456"})
julie = User.new({email: "julie@yopmail.com", password: "123456"})
paulie = User.new({email: "paulie@yopmail.com", password: "123456"})
annie.save!
lucie.save!
julie.save!
paulie.save!
puts "Users Finished!"

puts "Creating poissons..."
nemo = Poisson.new({name: "Nemo", category: "Poisson clown", price: 10, user: annie})
nemo.save!
jacky = Poisson.new({name: "Jacky", category: "Poisson chat", price: 8, user: lucie})
jacky.save!
lego = Poisson.new({name: "Lego", category: "Poisson chien", price: 7, user: annie})
lego.save!
lola = Poisson.new({name: "Lola", category: "Poisson eau", price: 12, user: julie})
lola.save!
philippe = Poisson.new({name: "Philippe", category: "Poisson clown", price: 11, user: annie})
philippe.save!
albert = Poisson.new({name: "Albert", category: "Poisson chien", price: 6, user: paulie})
albert.save!
vilo = Poisson.new({name: "Vilo", category: "Poisson chat", price: 9, user: paulie})
vilo.save!
hector = Poisson.new({name: "Hector", category: "Poisson clown", price: 13, user: julie})
hector.save!
jacques = Poisson.new({name: "Jacques", category: "Poisson eau", price: 10, user: lucie})
jacques.save!
thiarra = Poisson.new({name: "Thiarra", category: "Poisson clown", price: 15, user: annie})
thiarra.save!
puts "Poissons Finished!"
