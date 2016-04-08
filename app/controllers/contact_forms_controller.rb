class ContactFormsController < ApplicationController
  def new
    @contact = ContactForm.new
  end

  def create
    @contact = ContactForm.new(params[:contact_form])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Hvala na poruci. Javit cemo vam se uskoro!'
    else
      flash.now[:error] = 'Poruka se ne moze poslati.'
      render :new
    end
  end

end

