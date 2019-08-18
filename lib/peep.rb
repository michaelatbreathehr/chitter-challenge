require 'pg'

class Peep

  def self.all
    connection = PG.connect(dbname: 'chitter_challenge')
    peeps = connection.exec('SELECT * FROM peeps;')
    peeps.map { |peep| peep['message'] }
  end

end
