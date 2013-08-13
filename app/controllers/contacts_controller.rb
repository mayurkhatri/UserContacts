class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end

  def destroy
    @contact = Contact.find_by_id(params[:id])
    @contact.destroy
    flash[:notice] = 'Contact successfully deleted'
    redirect_to action: 'index'
  end

  def new
    @user = User.find_by_id(params[:user_id])
    @contact = Contact.new
  end
end
