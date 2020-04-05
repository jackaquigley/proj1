require_relative('../db/sql_runner.rb')
require_relative('jewellery')

class Manufacturer

attr_accessor :name, :type, :active
attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @type = options['type']
    @active = options['active']
  end

  def save()
    sql = "INSERT INTO manufacturer
    (
      name,
      type,
      active
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @type, @active]
    location = SqlRunner.run(
    sql, values ).first
    @id = location['id'].to_i
  end

  def update()
    sql = "UPDATE manufacturer
    SET
    (
      name,
      type,
      active
    ) =
    (
      $1, $2, $3
    )
    WHERE id = $4"
    values = [@name, @type, @active, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = 'DELETE FROM manufacturer'
    values = []
    SqlRunner.run(sql)
  end

  def self.all()
    sql = 'SELECT * FROM manufacturer'
    manufacturer_information = SqlRunner.run(sql)
    return result = Manufacturer.mapitems(manufacturer_information)
    r

  end

  def self.find(id)
    sql = 'SELECT * FROM manufacturer
    WHERE id = $1'
    values = [id]
    manufacturer = SqlRunner.run(sql, values).first
    return nil if manufacturer == nil
    returned_manufacturer = Manufacturer.new(manufacturer)
    return returned_manufacturer
  end


  def self.mapitems (manufacturer_information)
    result = manufacturer_information.map {|manufacturer| Manufacturer.new(manufacturer)}
  return result

  end

end
