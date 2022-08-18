class AdminMailer < ApplicationMailer
  default from: 'rails69@gmail.com'
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    @url = 'https://secret-coast-88273.herokuapp.com/'
    mail(to: 'rails69@gmail.com', subject: 'New user awaiting admin approval')
  end
end
