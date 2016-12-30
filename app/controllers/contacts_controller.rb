class ContactsController < ApplicationController
  def index
    @contacts = Contact.all.order(created_at: :desc)
  end

  def new
    @contact = Contact.new
    render :new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "Your inquiry successfully been submitted!"
      redirect_to new_contact_path
    else
      render :new
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_path
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :message, :country, :city, :address, :zip, :company)
  end
end
