class SandwichMailer < ActionMailer::Base
  default from: "make@sandwich.com"

  def send_order(current_user, sandwich)
    @user = current_user
    @sandwich = sandwich
    mail(to: @user.email, subject: "Sandwich!")
  end
end
