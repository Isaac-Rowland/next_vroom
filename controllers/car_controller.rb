get '/' do
  cars = all_cars()
  erb :'cars/index', locals: {
    cars: cars
  }
end

get '/cars/new' do 
  erb :'cars/new'
end

post '/car' do
  brand = params['brand']
  model = params['model']
  year = params['year']
  add_car(brand, model, year)
  redirect '/'
end

get '/cars/:id/edit' do
  id = params['id']
  car = get_car(id)
  erb :'cars/edit', locals: {
    car_id: id,
    car: car
  }
end

put '/update/:id' do
  id = params['id']
  brand = params['brand']
  model = params['model']
  year = params['year']
  update_car(id, brand, model, year)
  redirect '/'
end

delete '/delete/:id' do
  id = params['id']
  delete_car(id)
  redirect '/'
end
# car_pic = HTTParty.get("https://www.carimagery.com/api.asmx/GetImageUrl?searchTerm=#{brand}+#{model}+#{year}").parsed_response  &&&& <img src="<%= car_pic %>" alt="">
