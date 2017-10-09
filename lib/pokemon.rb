class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(name, type, db)
    binding.pry
    @name = name
    @type = type
    @db = db
  end

  # def self.save(name, type, db)
  #   db.execute("SELECT * FROM pokemon WHERE name = 'Pikachu'")
  # end
  #
  # def self.find
  #
  # end


end
