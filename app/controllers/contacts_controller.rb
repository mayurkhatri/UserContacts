class ContactsController < ApplicationController
  def index
    @contacts = current_user.contacts.all
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.user = current_user
    if @contact.save
      flash[:success] = 'Contact created successfully'
      redirect_to user_contacts_path(current_user.id) 
    else
      flash[:error] = 'Contact could not be saved'
      render action: 'new'
    end
  end

  def new
    @user = current_user
    @contact = Contact.new
  end

  def destroy
    @contact = Contact.find_by_id(params[:id])
    @contact.destroy
    flash[:notice] = 'Contact successfully deleted'
    redirect_to action: 'index' 
  end
end
