
class ContactMailer
  attr_accessor :email
  def initialize email_data
    email_data.subject = "Email de contato"
    @mailer = Mailer.new
    @email = @mailer.create_email(email_data,"app/views/mailer","notification")
  end
  def send_now
    @email.deliver
  end
end