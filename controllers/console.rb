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

  studs = Jewellery.new({
  'name' => 'Gold Studs',
  'suitable_for_first' => true,
  'type' => 'Earring',
  'price' => 60,
  'size' => '4mm',
  'quantity' => 12
  })

  studs.save

# manufacturer1.save
#
# manufacturer2.save

binding.pry
nil
