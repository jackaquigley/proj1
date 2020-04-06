require('sinatra')
require('sinatra/contrib/all') if development?

require_relative ('./models/jewellery')
require_relative('./models/manufacturer')
also_reload('./models/*')

get '/manufacturers' do
  @manufacturers = Manufacturer.all()
  erb (:'manufacturer/index')
end

get '/manufacturers/:id' do
  @manufacturer = Manufacturer.find(params['id'].to_i)
  erb( :"manufacturer/show" )
end
