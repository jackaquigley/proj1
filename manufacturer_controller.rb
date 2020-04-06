require('sinatra')
require('sinatra/contrib/all') if development?

require_relative ('./models/jewellery')
require_relative('./models/manufacturer')
also_reload('./models/*')

get '/manufacturers' do
  @manufacturers = Manufacturer.all()
  erb (:'manufacturer/index')
end
