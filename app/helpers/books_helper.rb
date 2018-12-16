module BooksHelper
  
  def book_image_for(book)
    image_tag("books/book_icon.jpg", alt: "book icon", class: "avatar")
  end
end
