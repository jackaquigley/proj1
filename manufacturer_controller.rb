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

get '/jewellery' do
  @stock = Jewellery.all_stock()
    erb (:'jewellery/index')
  end

get '/jewellery/:id' do
  @jewellery = Jewellery.find(params['id'].to_i)
  erb (:'jewellery/show')
  end
