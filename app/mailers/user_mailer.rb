class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.new_resource_notification.subject
  #
  def new_resource_notification(resource)
    @resourceMail = resource

    mail to: "me@samturner.net.au"
  end
end
