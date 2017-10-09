class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

#
# {Pokemon.new(id: 1, name: "Pikachu", type: "electric", db: @db)}
  # def self.save(name, type, db)
  #   db.execute("SELECT * FROM pokemon WHERE name = 'Pikachu'")
  # end
  #
  # def self.find
  #
  # end


end
