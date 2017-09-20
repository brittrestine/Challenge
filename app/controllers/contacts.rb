get '/contact/:id' do
  @contact = Contact.find_by(id: params[:id])

  erb :contact
end

put '/contact/favorite/:id' do
  @contact = Contact.find_by(id: params[:id])
  @contact.save
  if request.xhr?
    if @contact.favorite
      @contact.update_attributes(favorite: false)
      "false"
    else
      @contact.update_attributes(favorite: true)
      "true"
    end
  else
    redirect "/contact/#{@contact.id}"
   end
end