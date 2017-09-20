get '/' do
  @favorite_contacts = Contact.where(favorite: true)

  erb :index
end