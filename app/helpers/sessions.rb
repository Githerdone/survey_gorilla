def current_user
  if session[:user_id]
    @user ||= User.find(session[:user_id])
    p "This is the user: #{@user}"
  end
end
