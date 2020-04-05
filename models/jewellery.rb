require_relative('../db/sql_runner.rb')

class Jewellery

attr_accessor :name, :suitable_for_first, :type, :price, :size, :quantity

  def initialize(options)
    @name = options['name']
    @suitable_for_first = options['suitable_for_first']
    @type = options['type']
    @price = options['price']
    @size = options['size']
    @quantity = options['quantity']
  end

  def save()
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

end
