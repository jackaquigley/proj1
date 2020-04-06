require('sinatra')
require('sinatra/contrib/all') if development?

require_relative ('./models/jewellery')
require_relative('./models/manufacturer')
also_reload('./models/*')
