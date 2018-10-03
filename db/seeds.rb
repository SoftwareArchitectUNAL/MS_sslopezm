# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do 
    street = Street.create(
        neighborhood: FFaker::Lorem.phrase(3),
        stype: Faker::Lorem.word,
        body_count: Faker::Number.between(0, 20),
        description: FFaker::Lorem.phrase(30),
    )
    if street.persisted?
        violence_act = street.create_violence_act(
            act_type: "Street",
        )
    end

    gender = Gender.create(
        neighborhood: FFaker::Lorem.phrase(3),
        gtype: Faker::Lorem.word,
        criminal_complaint: FFaker::Lorem.phrase(20),
        body_count: Faker::Number.between(0, 1),
    )
    if gender.persisted?
        violence_act = gender.create_violence_act(
            act_type: "Gender",
        )
    end


    intrafamily = Intrafamily.create(
        neighborhood: FFaker::Lorem.phrase(3),
        victim: Faker::Lorem.word,
        aggressor: Faker::Lorem.word,
        criminal_complaint: FFaker::Lorem.phrase(20),
    )
    if intrafamily.persisted?
        violence_act = intrafamily.create_violence_act(
            act_type: "Intrafamility",
        )
    end

    murder = Murder.create(
        neighborhood: FFaker::Lorem.phrase(3),
        body_count: Faker::Number.between(0, 20),
        description: FFaker::Lorem.phrase(30),
    )
    if murder.persisted?
        violence_act = murder.create_violence_act(
            act_type: "Murder",
        )
    end
end
        
    