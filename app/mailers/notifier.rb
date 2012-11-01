class Notifier < ActionMailer::Base
     default :from => "rubyrails@gmail.com"
 
  def notification(user)
    @user = user

    mail(:to => user.email, :subject => "Notification")
  end
end
