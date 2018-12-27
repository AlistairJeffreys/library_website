module AuthorsHelper
  
  # Returns a default profile image for an author
  def author_icon
    image_tag("authors/author_icon.png", alt: "author icon", class: "avatar")
  end
end
