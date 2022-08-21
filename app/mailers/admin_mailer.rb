class AdminMailer < ApplicationMailer
  @admin = User.where(role: 1).pluck(:email)
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    mail(to: @admin, subject: 'New user awaiting admin approval')
  end
end
