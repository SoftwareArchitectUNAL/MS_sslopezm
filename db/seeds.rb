# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@localities = ["Bosa", "Kennedy", "Usaquen", "Chapinero", "Santa Fe", "San Cristobal", "Usme", "Tunjuelito", "Fontibon", "Engativa", "Suba",
"Barrios Unidos", "Teusaquillo", "Los Martires", "Antonio Nariño", "Sumapaz", "Ciudad Bolivar", "Rafael Uribe Uribe", "La Candelaria",
"Puente Aranda"]

20.times do 
    street = Street.create(
        locality: @localities.sample,
        stype: Faker::Lorem.word,
        body_count: Faker::Number.between(0, 20),
        description: FFaker::Lorem.phrase(15),
    )

    gender = Gender.create(
        locality: @localities.sample,
        gtype: Faker::Lorem.word,
        criminal_complaint: FFaker::Lorem.phrase(10),
        body_count: Faker::Number.between(0, 1),
    )

    intrafamily = Intrafamily.create(
        locality: @localities.sample,
        victim: Faker::Lorem.word,
        aggressor: Faker::Lorem.word,
        criminal_complaint: FFaker::Lorem.phrase(10),
    )

    murder = Murder.create(
        locality: @localities.sample,
        body_count: Faker::Number.between(0, 20),
        description: FFaker::Lorem.phrase(15),
    )
    
end
        
    