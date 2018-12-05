module UsersHelper
  
  # Returns a default profile image for a user
  def user_icon
    image_tag("users/user_icon.png", alt: "user icon", class: "avatar")
  end
end
