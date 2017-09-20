get '/contact/:id' do
  @contact = Contact.find_by(id: params[:id])

  if @contact[:favorite]
    @favorite_contact = @contact
  else
    @other_contact = @contact
  end

  erb :contact
end
