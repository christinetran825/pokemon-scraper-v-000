class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
    the_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    self.new(id: the_pokemon[0], name: the_pokemon[1], type: the_pokemon[2], db: db)
  end

end
