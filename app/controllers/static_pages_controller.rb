class StaticPagesController < ApplicationController

  def contact
    @contact = Contact.new
  end

end
