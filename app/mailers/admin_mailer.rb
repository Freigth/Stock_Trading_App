class AdminMailer < ApplicationMailer
  default from: DEFAULT_FROM
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    @url = 'https://secret-coast-88273.herokuapp.com/'
    mail(to: 'admin@email.com', subject: 'New user awaiting admin approval')
  end
end
