require ('pry')
require_relative ('../models/jewellery')
require_relative('../models/manufacturer')
require_relative('../db/seeds')

manufacturer1 = Manufacturer.new({
  'name' => 'Wholesale Jewellery',
  'type' => 'Wholesaler',
  'active' => true
  })

manufacturer2 = Manufacturer.new({
  'name' => 'Ebay',
  'type' => 'Online',
  'active' => true
  })

manufacturer1.save

manufacturer2.save

binding.pry
nil
