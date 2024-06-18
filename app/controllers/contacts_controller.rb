class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Your message has been sent.'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def contact_params
      params.permit(:name, :email, :message)
  end

end
