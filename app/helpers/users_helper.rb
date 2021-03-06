module UsersHelper
  def get_avatar_user user
    user.avatar? ? user.avatar : "no_avatar.png"
  end

  def check_follow user_id
    User.check_follow(current_user, user_id) > 0
  end
end
