class AdminMailer < ApplicationMailer
  @admins = User.where(role: 1).pluck(:email)
  layout 'mailer'

  def new_user_waiting_for_approval(email)
    @email = email
    mail(to: @admins, subject: 'New user awaiting admin approval') if @admins.any?
  end
end
