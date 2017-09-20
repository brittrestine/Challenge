get '/contact/:id' do
  @contact = Contact.find_by(id: params[:id])

  if @contact[:favorite]
    @favorite_contact = @contact
  else
    @other_contact = @contact
  end

  erb :contact
end

put '/contact/:id' do
  @contact = Contact.find_by(id: params[:id])
  @contact.update_attributes(favorite: true)
  @contact.save

  redirect "/contact/#{@contact.id}"

   if @article.save
    redirect "article/#{@article.id}"
  else
    @errors = @entry.errors.full_messages
    erb :'article/edit'
  end
end
