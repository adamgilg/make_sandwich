class SandwichMailer < ActionMailer::Base
  default from: "make@sandwich.com"

  def send_order(current_user, order)
    @user = current_user
    @order = order
    mail(to: @user.email, subject: "Sandwich!")
  end
end
