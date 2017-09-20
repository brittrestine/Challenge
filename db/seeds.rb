def contact_info
    url = 'https://s3.amazonaws.com/technical-challenge/v3/contacts.json'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end


contact_info.each do |contact|

  Contact.create!(
    name: contact['name'],
    company: contact['companyName'],
    small_image: contact['smallImageURL'],
    large_image: contact['largeImageURL'],
    email: contact['emailAddress'],
    birthdate: contact['birthdate'],
    favorite: contact['isFavorite'],
    work_phone: contact["phone"]["work"],
    home_phone: contact["phone"]["home"],
    mobile_phone: contact["phone"]["moble"],
    street_address: contact["address"]["street"],
    city: contact["address"]["city"],
    country: contact["address"]["country"],
    zipcode: contact["address"]["zipCode"]
    )

end
