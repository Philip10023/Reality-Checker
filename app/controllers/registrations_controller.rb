class RegistrationsController < Devise::RegistrationsController

  def create
    super
    if @user.email == ""
    else
      UserMailer.welcome_email(@user).deliver
    end
  end
end
