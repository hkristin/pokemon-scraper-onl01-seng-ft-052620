class Pokemon
  attr_accessor :id, :name, :type, :db
  
  def initialize(id:, name:, type:, db:)
    self.id = id
    self.name = name
    self.type = type
    self.db = db
  end
  
  def self.save(name, type, db)
    sql = <<-SQL 
    INSERT INTO pokemon (name, type)
    VALUES (?, ?);
    SQL
    
    db.execute(sql, name, type)
  end

  def self.find(id, db)
    sql = <<-SQL
    SELECT *
    FROM pokemon
    WHERE id = ?
    SQL
    
    data = db.execute(sql, id).flatten
    id, name, type = data
    Pokemon.new(id: id, name: name, type: type, db: db)
  end
=======
  
>>>>>>> 6530734ed166e8900e7ef3f61420fd577edd72f1
end
