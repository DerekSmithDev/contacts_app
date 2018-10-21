class Api::ContactsController < ApplicationController

  def index
    @contacts = Contact.all
    first_name = params[:first_name]
    if first_name
      @contacts = @contacts.where("first_name ILIKE ?", "#{first_name}")
    end
    render "index.json.jbuilder"
  end
  def create
    @contact = Contact.new(
      first_name: params["first_name"],
      middle_name: params["middle_name"],
      last_name: params["last_name"],
      bio: params["bio"],
      email: params["email"],
      phone_number: params["phone_number"]
      )
    if @contact.save
      render "show.json.jbuilder"
    else
      render json: {errors: @contact.errors.full_messages}, status: 422
    end
  end
  def show
    @contact = Contact.find_by(id: params["id"])
    render "show.json.jbuilder"
  end
  def update
    @contact = Contact.find_by(id: params["id"])
    @contact.first_name = params["first_name"] || @contact.first_name
    @contact.middle_name = params["middle_name"] || @contact.middle_name
    @contact.last_name = params["last_name"] || @contact.last_name
    @contact.bio = params["bio"] || @contact.bio
    @contact.email = params["email"] || @contact.email
    @contact.phone_number = params["phone_number"] || @contact.phone_number
    if @contact.save
      render "show.json.jbuilder"
    else
      render json: {errors: @contact.errors.full_messages}, status: 422
    end
  end
  def destroy
    @contact = Contact.find_by(id: params["id"])
    @contact.destroy
    render "destroy.json.jbuilder"
  end
end
