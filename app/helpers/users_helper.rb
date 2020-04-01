module UsersHelper
  def higakin
    return image_tag @user.img_name.url(:thumb)
  end
end
