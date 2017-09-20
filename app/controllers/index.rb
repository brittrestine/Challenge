get '/' do
  @favorite_contacts = Contact.where(favorite: true).order(:name)
  @other_contacts = Contact.where(favorite: false).order(:name)

  erb :index
end