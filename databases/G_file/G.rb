#Create an organizer file for documents and items that you physically store
  #Items to store will have name,type,location
#Welcome myself, let me know what program I am using
#Ask me what do I want to do..? Store a new document, update a current item or delete an item
  #conditional statements:
    #if Add is typed, run a add method
    #if update is typed, ask what will be updated, run a search and find it so it can be updated
    #if delete is run, type what you want to delete and search for it and delete
#Once finished doing what I need to do, ask if there is anything else I want to do or end
#If type end, leave program

#require gems
require 'sqlite3'

db = SQLite3::Database.new("items.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
  id INTEGER PRIMAY KEY,
  name VARCHAR(255),
  owner VARCHAR(255),
  location VARCHAR(255),
  type VARCHAR(255),
  date INT
  )
SQL

db.execute(create_table_cmd)


def add_to_list(db,name,owner,location,type,date)
  db.execute("INSERT INTO items(name,owner,location,type,date) VALUES(?,?,?,?,?)",[name,owner,location,type,date])
end
add_to_list(db,"Birth Certificate","Jorge","Locked Drawer","Document",210517)

=begin
class Items
  attr_accessor :name, :location, :date
  def initialize(name)
    @name = name
    @owner = nil
    @location = nil
    @type = nil
    @date =  nil
  end
end

ring = Items.new('Wedding ring')
p ring.name
=end
