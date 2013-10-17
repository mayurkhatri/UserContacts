class ContactsController < ApplicationController
  def index
    @contacts
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(params[:contact])
    @user = User.find_by_id(params[:user_id])

    @contact.users << @user
    if @contact.save
      flash[:success] = 'Contact created successfully'
      redirect_to user_contacts_path(@user.id) 
    else
      flash[:error] = 'Contact could not be saved'
      render action: 'new'
    end
  end

  def new
    @user = User.find_by_id(params[:user_id])
    @contact = Contact.new
  end

  def edit
    @user = current_user
    @contact = Contact.find_by_id(params[:id])
  end

  def show
    @user = current_user
    @contact = Contact.find_by_id(params[:id])
  end

  def update
    @user = current_user
    @contact = Contact.find_by_id(params[:id])
    if @contact.last_name.present? 
      debugger
     @contact.last_name = @contact.last_name.slice(0,1).capitalize + @contact.last_name.slice(1..-1)
    end
    if @contact.update_attributes(params[:contact])
      flash[:success] = 'Contact updated successfully'
      redirect_to user_contact_path(current_user.id, @contact.id)     
    else
      render  action: :edit
    end
  end

  def destroy
    @contact = Contact.find_by_id(params[:id])
    @contact.destroy
    flash[:notice] = 'Contact successfully deleted'
    redirect_to action: 'index' 
  end
end
