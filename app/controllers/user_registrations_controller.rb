class UserRegistrationsController < Devise::UserRegistrationsController
  def create

    if @user.persisted?
      UserMailer.welcome(@user).deliver_now
    end
    super
  end
end
