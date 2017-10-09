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
    the_pokemon = @db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
    # self.new(id: the_pokemon[0], name: the_pokemon[1], type: the_pokemon[2], db: db)
  end

  #
  # describe ".find" do
  #   it 'finds a pokemon from the database by their id number and returns a new Pokemon object' do
  #     # The find method creates a new Pokemon after selecting their row from the database by their id number.
  #     Pokemon.save("Pikachu", "electric", @db)
  #
  #     pikachu_from_db = Pokemon.find(1, @db)
  #     expect(pikachu_from_db.id).to eq(1)
  #     expect(pikachu_from_db.name).to eq("Pikachu")
  #     expect(pikachu_from_db.type).to eq("electric")
  #   end
  # end

end
