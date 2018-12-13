User.create!(name: "Example User",
             email: "example@example.com",
             library_card_number: "12345678901234",
             password: "password",
             password_confirmation: "password",
             admin: true)
             
 20.times do |n|
   name  = Faker::Name.name
   email = "#{name.split[0]}-#{n+1}@railstutorial.org"
   library_card_number = Faker::Number.number(14)
   password = "password"
   User.create!(name:  name,
                email: email,
                library_card_number: library_card_number,
                password:              password,
                password_confirmation: password )
 end