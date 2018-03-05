class UserMailer < ActionMailer::Base
  default :from => 'Dondo788@gmial.com'

  def registration_confirmation(user, origin)
    @user = user
    @origin = origin
    mail(:to => "#{user.full_name} <#{user.email}>", :subject => "Registration Confirmation")
  end
end