require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require('pry-byebug')

require_relative('../models/jewellery')
require_relative('../models/manufacturer')

class JewelleryTest < Minitest::Test

  def setup
    @dermal = Jewellery.new({
      'name' => "Titanium Dermal Anchor",
      'suitable_for_first' => true,
      'type' => 'Dermal',
      'price' => 40,
      'size' => '14G',
      'quantity' => 4 })
  end

  def test_jewellery_name
    assert_equal('Titanium Dermal Anchor', @dermal.name)
  end

  def test_jewellery_suitable_for_first
  assert_equal(true, @dermal.suitable_for_first)
  end

  def test_jewellery_type
  assert_equal("Dermal", @dermal.type)
end

def test_jewellery_price
  assert_equal(40, @dermal.price)
end

def test_jewellery_size
  assert_equal('14G', @dermal.size)
end

def test_jewellery_quantity
  assert_equal(4, @dermal.quantity)
end

end
