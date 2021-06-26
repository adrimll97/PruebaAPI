# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Persona.create(
    nombre: Faker::Name.name,
    fecha_nacimiento: Faker::Date.birthday(min_age: 15, max_age: 30))
end

15.times do
  Comunicado.create(
    creador_id: Persona.ids.sample,
    receptor_id: Persona.ids.sample,
    asunto: Faker::Lorem.word,
    contenido: Faker::Lorem.sentence,
    comunicado_anterior_id: Comunicado.ids.sample
  )
end

20.times do
  Adjunto.create(comunicado_id: Comunicado.ids.sample)
end
