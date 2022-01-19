puts "seeding......"

10.times do
    Role.create(
        character_name: Faker::Movies::PrincessBride.character
    )
end

20.times do
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Address.city,
        role_id: Role.all.sample.id,
        phone: Faker::PhoneNumber.phone_number,
        hired: [true, false].sample
    )
end
    
puts "seeding done!"