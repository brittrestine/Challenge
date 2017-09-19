get '/' do
  @contacts = contact_info
  erb :index
end