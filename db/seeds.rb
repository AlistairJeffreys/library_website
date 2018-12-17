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
 
 Book.create!(title: "The Battle of Austerlitz",
              author: "Charles River Editors",
              isbn: 9781492923824,
              description: "",
              genre: "History",
              publication_date: DateTime.strptime("2018", '%Y'),
              publisher: "Amazon")
          
100.times do |n|
  title = Faker::Book.title
  author = Faker::Book.author
  isbn = Faker::Number.number(10).to_i + n
  description = Faker::GameOfThrones.quote
  genre = Faker::Book.genre
  publication_date = DateTime.strptime("2018", '%Y')
  publisher = Faker::Book.publisher
  Book.create!(title: title,
               author: author,
               isbn: isbn,
               description: description,
               genre: genre,
               publication_date: publication_date,
               publisher: publisher )
end