#require gems
require 'sqlite3'

#Create database to store variables
db = SQLite3::Database.new("items.db")

#Create table in database command
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

#Run the create table database command
db.execute(create_table_cmd)

#Method for adding items
def add_to_list(db,name,owner,location,type,date)
  db.execute("INSERT INTO items(name,owner,location,type,date) VALUES(?,?,?,?,?)",[name,owner,location,type,date])
end

def show_list(db)
  list = db.execute("SELECT * FROM items")
  list.each do |i|
    puts i
  end
end
#def search_item(db,item)
#  p db.execute("SELECT * FROM items WHERE name=item")
#end

#----DRIVER CODE----#
#add_to_list(db,"Birth Certificate","Jorge","Locked Drawer","Document",210517)
#add_to_list(db,"Car Invoice","Jorge","Locked Drawer","Document",180317)
#add_to_list(db,"Car Keys","Jorge","Top Drawer","Item",200517)
#add_to_list(db,"Passport","Jorge","Studio Cabinet","Document",210517)
#add_to_list(db,"Passport","Fer","Studio Cabinet","Document",210517)
#add_to_list(db,"Wedding ring","Fer","Closet Drawer","Item",180517)
#add_to_list(db,"Hard Drive","Jorge","Studio Cabinet","Item",210517)
#search_item(db,"Birth Certificate")
show_list(db)
