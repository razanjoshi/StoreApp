class StoreMailer < ApplicationMailer
  default from: "razan.joc@gmail.com"

  def new_product_alert(user, subject, product)
    @user = user
    @product = product
    mail(to: @user.email, subject: subject)
  end
end
