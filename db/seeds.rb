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
 
 Author.create!(name: "Unknown Author",
                birth_date: DateTime.strptime("1918", '%Y'),
                death_date: DateTime.strptime("2018", '%Y'))
              
100.times do |n|
  name = "Author" + n.to_s
  birth_date =  DateTime.strptime("1918", '%Y')
  death_date = DateTime.strptime("2018", '%Y')
  Author.create!(name: name,
                 birth_date: birth_date,
                 death_date: death_date )
end
 
 Book.create!(title: "The Battle of Austerlitz",
              author: Author.find_by(name: "Unknown Author"),
              isbn: 9781492923824,
              description: "",
              genre: "History",
              publication_date: DateTime.strptime("2018", '%Y'),
              publisher: "Amazon")
          
100.times do |n|
  title = Faker::Book.title
  isbn = Faker::Number.number(10).to_i + n
  author = Author.find_by(name: "Author" + n.to_s)
  description = Faker::GameOfThrones.quote
  genre = Faker::Book.genre
  publication_date = DateTime.strptime("2018", '%Y')
  publisher = Faker::Book.publisher
  Book.create!(title: title,
               isbn: isbn,
               author: author,
               description: description,
               genre: genre,
               publication_date: publication_date,
               publisher: publisher )
end

books = Book.order(:created_at)
10.times do
  books.each { |book| book.book_copies.create! }
end

# Reserving relationships
users = User.all
user = users.first
book_copies = BookCopy.all
book_copies.each { |book_copy| user.reserve(book_copy) }

# Borrowing relationships
users = User.all
user = users.first
book_copies = BookCopy.all
book_copies.each { |book_copy| user.borrow(book_copy) }
