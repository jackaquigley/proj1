require_relative ('../models/jewellery')
require_relative('../models/manufacturer')

require('pry-byebug')

dermal = Jewellery.new({
  'name' => 'Titanium Dermal Anchor',
  'suitable_for_first' => true,
  'type' => 'Dermal Anchor',
  'price' => 45,
  'size' => '18G',
  'quantity' => 5
  })

dermal.save

binding.pry
nil
