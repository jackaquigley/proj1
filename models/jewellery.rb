require_relative('../db/sql_runner.rb')

class Jewellery

attr_accessor :name, :suitable_for_first, :type, :price, :size, :quantity
attr_reader :id

  def initialize(options)
    @name = options['name']
    @suitable_for_first = options['suitable_for_first']
    @type = options['type']
    @price = options['price'].to_i
    @size = options['size']
    @quantity = options['quantity'].to_i
  end

  def save_jewellery()
    sql = "INSERT INTO jewellery
    (
      name,
      suitable_for_first,
      type,
      price,
      size,
      quantity
    )
    VALUES
    (
      $1, $2, $3, $4, $5, $6
    )
    RETURNING id"
    values = [@name, @suitable_for_first, @type, @price, @size, @quantity]
    location = SqlRunner.run(
    sql, values ).first
    @id = location['id'].to_i
  end

  def self.all_stock()
    sql = "SELECT * FROM jewellery"
    stock = SqlRunner.run(sql)
    return Jewellery.map_items(stock)
  end

  def self.map_items (stock_information)
    result = stock_information.map {|stock| Jewellery.new(stock)}
  return result
  end

  def self.delete_all()
  sql = 'DELETE FROM jewellery'
  values = []
  SqlRunner.run(sql)
end

end
