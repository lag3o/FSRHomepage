class NewsletterController < ApplicationController

  def create
    @recipient = Recipient.new(recipient_params)
    @recipient.save
  end

  private
    def recipient_params
      params.require(:newsletter).permit(:email)
    end

  def senden
    @newsletter = Newsletter.find(:params['id'])
    @recipients = Recipient.all
    @recipients.each do |recipient|
      Newsletter.newsletter_email(recipient, @newsletter).deliver
    end
  end

end
