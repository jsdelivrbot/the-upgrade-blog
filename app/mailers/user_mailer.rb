class UserMailer < ApplicationMailer
  
  def welcome_email(user)
    @user = user
    @url  = 'http://theupgrade.blog'
    mail(to: @user.email, subject: 'Welcome to The Upgrade Blog!')
  end
  
  def send_post(user)
    @post = Post.published.last
    @user = user
    @url  = 'http://theupgrade.blog'
    mail(to: @user.email, subject: "The Upgrade Blog - #{@post.title}")
  end

end
