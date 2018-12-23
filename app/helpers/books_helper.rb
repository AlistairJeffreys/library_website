module BooksHelper
  
  def book_image_for(book)
    if book.picture.url
      image_tag(book.picture.url, alt: "book icon", class: "avatar")
    else
      image_tag("books/book_icon.jpg", alt: "book icon", class: "avatar")
    end
  end
end
