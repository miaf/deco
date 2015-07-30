# Preview all emails at http://localhost:3000/rails/mailers/user
class UserPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user/signup
  def signup
  	user = User.find(1)
    User.signup(user)
  end

end
