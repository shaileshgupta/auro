class ContactsController < ApplicationController
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_confirmation(@contact).deliver
      flash[:success] = "Thank you for contacting us. Someone from our sales team will reach out to you within 24 hours."
    else
      flash[:danger] = "All fields are mandatory. Please try again."
    end
    redirect_to '/contact'
  end

  private

    def contact_params
      params.require(:contact).permit(:name, :email, :mobile, :body)
    end
end
