get '/contact/:id' do
  number = params[:id]

  contact_info.each do |contact|
    if contact['id'] == number
      @contact = contact
    end
  end

  # @contacts = contact_info
  erb :contact
end
