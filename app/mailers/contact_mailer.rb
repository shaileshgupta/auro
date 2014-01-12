class ContactMailer < ActionMailer::Base
  default from: "nalin@aurobots.com",
              cc: "srinivas@aurobots.com",
              bcc: ["contact.shaileshgupta@gmail.com", "nalingupta.id@gmail.com"]

  def contact_confirmation(contact)
    @contact = contact

    mail :to => @contact.email, :subject => "Thank you for contacting AuRo Robotics"
  end
end
