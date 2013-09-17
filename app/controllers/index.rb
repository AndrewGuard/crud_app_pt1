# GET ========================================================

get '/' do
  @contacts = Contact.order('last_name ASC')
  erb :index
end

get '/contacts/new' do
  @contact = Contact.new(params[:contact])
  erb :new
end

# POST ========================================================

post '/contacts' do
  @contact = Contact.new(params[:contact])
  if @contact.save
    redirect to('/')
  else
    erb :new
  end
end