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
    birthday: contact['birthdate'],
    favorite: contact['isFavorite'],
    work_phone: ["phone"]["work"],
    home_phone: ["phone"]["home"],
    moble_phone: ["phone"]["moble"],
    street_address: ["address"]["street"],
    city: ["address"]["city"],
    country: ["address"]["country"],
    zipcode: ["address"]["zipCode"]
    )

end
