require 'peep'

describe Peep do
  describe '.all' do
    it 'displays all peeps' do
      connection = PG.connect(dbname: 'peeps_test')

      connection.exec("INSERT INTO peeps VALUES(1, 'This is my first peeps');")
      connection.exec("INSERT INTO peeps VALUES(2, 'This is my second peeps');")
      connection.exec("INSERT INTO peeps VALUES(3, 'This is my third peeps');")

      peeps = Peep.all

      expect(peeps).to include('This is my first peeps')
    end
  end

  describe '.create' do
    it 'creates a new peep' do
      Peep.create(message: 'this is a test peep')
      expect(Peep.all).to include 'this is a test peep'
    end
  end
end
