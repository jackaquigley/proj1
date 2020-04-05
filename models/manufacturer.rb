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

end
