require('sinatra')
require('sinatra/contrib/all') if development?

require_relative ('./models/jewellery')
require_relative('./models/manufacturer')
also_reload('/models/*')

get '/manufacturers' do
  @manufacturers_all = Manufacturer.all()
  erb(:index)
end

get '/manufacturers/:id' do
  id = params['id'].to_i()
  @manufacturer = Manufacturer.find(id)
  erb(:show)
end
