class UserMailer < ApplicationMailer
  default from: 'realitychecker13@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://www.google.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site') do |format|
      format.html { render 'welcome_email' }
      format.text { render plain: 'Render text' }
    end
  end

  def category_email(user)
    @user = user
    @realitycheck = rand(@realities)
    mail(to: @user.email, subject:'Here is your reality check!') do |format|
      format.html { render 'category_email' }
      format.text { render plain: 'Render text' }
    end
  end
end
