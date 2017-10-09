class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(id:, name:, type:, db:)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)" ,name, type, db)

    # ("SELECT * FROM pokemon WHERE name = 'Pikachu'")
  end


  #
  # def self.find
  #
  # end


  # describe ".save" do
  #   it 'saves an instance of a pokemon with the correct id' do
  #     Pokemon.save("Pikachu", "electric", @db)
  #
  #     pikachu_from_db = @db.execute("SELECT * FROM pokemon WHERE name = 'Pikachu'")
  #     expect(pikachu_from_db).to eq([[1, "Pikachu", "electric"]])
  #   end
  # end

end
