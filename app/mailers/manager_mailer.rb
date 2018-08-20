class ManagerMailer < ApplicationMailer
  def email manager
    @manager = manager
    mail(to: @manager.email, subject: 'Daily Maintenace Request Email')
  end
end
