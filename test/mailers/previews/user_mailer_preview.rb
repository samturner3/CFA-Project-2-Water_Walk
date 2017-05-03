# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/new_resource_notification
  def new_resource_notification
    UserMailer.new_resource_notification
  end

end
