class Newsletter < ActionMailer::Base

  default from: "unsere@adresse.de"
  layout 'mailer'

  def welcome_email(user)
    @user = user
    @url  = ''
    mail(to: @user.email, subject: 'Anmeldung erfolgreich :)')
  end

  def newsletter_email(recipient, newsletter)
    # these are instance variables for newsletter view
    @newsletter = newsletter
    @recipient = recipient
    mail(:bcc => recipient.email, :subject => newsletter.subject)
  end

end
