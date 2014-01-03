class ContactMailer < ActionMailer::Base
  default from: "contact.shaileshgupta@gmail.com"

  def contact_confirmation(contact)
    @contact = contact

    mail :to => "shailesh@mintzone.in", :subject => "Request For Sales Contact"
  end
end
