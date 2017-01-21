class ContactsController < ApplicationController
  
  # GET request to /contact-us
  # Show new contact form
  def new
    @contact = Contact.new
  end
  
  # POST request /contacts
  def create
    @contact = Contact.new(contact_params)
    if @contact.save    # Save contact to database
      flash[:success] = "New Donor created."
      redirect_to new_contact_path
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
  end
  
  private
  
  # To collect data from forms, we need to whitelist form fields
  # and use strong parameters
  def contact_params
     params.require(:contact).permit(:name, :age, :sex, :dob, :fathers_name, :occupation, :organisation, :address, :email, :phone)
  end

end