get '/contact/:id' do
  @contact = Contact.find_by(id: params[:id])

  if @contact[:favorite]
    @favorite_contact = @contact
  else
    @other_contact = @contact
  end

  erb :contact
end

put '/contact/favorite/:id' do
  @contact = Contact.find_by(id: params[:id])
  @contact.update_attributes(favorite: true)
  @contact.save

  redirect "/contact/#{@contact.id}"
end

put '/contact/unfavorite/:id' do
  @contact = Contact.find_by(id: params[:id])
  @contact.update_attributes(favorite: false)
  @contact.save

  redirect "/contact/#{@contact.id}"
end