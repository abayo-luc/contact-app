class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find_by(id: params[:id])
  end

  def new
  end

  def create
    first_name = params[:first_name]
    last_name = params[:last_name]
    email = params[:email]
    phone = params[:phone]
    midle_name = params[:midle_name]
    bio = params[:bio]
    latitude = params[:latitude]
    longitude = params[:longitude]
    contact = Contact.new({first_name: first_name, last_name: last_name, email: email, phone: phone, midle_name: midle_name, bio: bio, latitude: latitude, longitude: longitude})
    contact.save
    redirect_to "/contacts/#{contact.id}"
  end

  def edit
    @contact = Contact.find_by(id: params[:id])
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    @contact.bio = params[:bio]
    @contact.longitude = params[:longitude]
    @contact.latitude = params[:latitude]
    @contact.midle_name = params[:midle_name]
    @contact.save
    redirect_to "/contacts/#{@contact.id}"
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    redirect_to "/contacts"
  end
end
