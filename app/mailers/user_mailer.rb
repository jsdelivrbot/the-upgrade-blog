class UserMailer < ApplicationMailer
  
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  
  def send_post(user)
    @post = Post.published.last
    @user = user
    @url  = 'http://theupgrade.blog'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
