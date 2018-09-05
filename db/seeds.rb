# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
proyect = Proyect.create(name:'ejemplo1', content:'intento desesperado')
10.times do |i|
  w = Worker.create(name: 'jose', last_name: 'codecido', email: "joseto#{i+1}@gmail.com")
  w.proyects << proyect
  w.save
end
