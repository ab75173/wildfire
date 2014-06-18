class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def notification_email(user)
    @user = user
    @url = 'http://example.com/login'
    mail(to: @user.email, subject: 'There\'s been activity on your event!')
  end

end