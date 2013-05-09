class SandwichMailer < ActionMailer::Base
  default from: "make@sandwich.com"

  def send_order(current_user, sandwich, quote)
    @user = current_user
    @sandwich = sandwich
    @quote = quote
    mail(to: @user.email, subject: "Sandwich!")
  end
end
