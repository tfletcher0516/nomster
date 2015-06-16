class NotificationMailer < ActionMailer::Base
  default from: "no-reply@enomster.com"

  def comment_added
  	mail(to: "fletcher0516@gmail.com", subject: "A comment has been added to your place")
  
  end
end
