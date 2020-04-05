require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require('pry-byebug')

require_relative('../models/jewellery')
require_relative('../models/manufacturer')

class ManufacturerTest < Minitest::Test

  def setup
      @manufacturer1 = Manufacturer.new({
        'name' => "Wholesale Jewellery",
        'type' => 'Wholesaler', 'active' => true })
    end

  def test_get_manufacturer_name
  assert_equal("Wholesale Jewellery", @manufacturer1.name)
end

def test_get_manufacturer_type
  assert_equal("Wholesaler", @manufacturer1.type)
end

def test_get_active_boolean
  assert_equal(true, @manufacturer1.active)
end

end
