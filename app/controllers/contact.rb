get '/contact/:id' do
  number = params[:id]

  contact_info.each do |contact|
    @contact = contact if contact['id'] == number
  end

  erb :contact
end
