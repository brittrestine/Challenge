require 'net/http'
require 'json'

helpers do
  def contact_info
    url = 'https://s3.amazonaws.com/technical-challenge/v3/contacts.json'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  end
end