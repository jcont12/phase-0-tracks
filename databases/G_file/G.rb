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

def search_item(db,item)
  list = db.execute("SELECT * FROM items WHERE name=?",item)
  list.each do |i|
    puts i
  end
end

def delete_item(db,item)
  db.execute("DELETE FROM items WHERE name=?",item)
end


#----DRIVER CODE----#
puts 'Welcome to your important items inventory List'
puts '..........'

condition = false
until condition
  puts 'What would you like to do? (type:add/delete/search/list/exit)'
  input = gets.chomp.downcase
  if input == 'add'
    puts 'Write the name of the item you would like to add'
    name = gets.chomp
    puts 'Who is the owner of the item?'
    owner = gets.chomp
    puts 'Where will it be stored?'
    location = gets.chomp
    puts 'What is the item type (document/item)'
    type = gets.chomp
    puts 'What is the current date?'
    date = gets.chomp
    add_to_list(db,name,owner,location,type,date)
    condition = true
  elsif input == 'delete'
    puts 'What item would you like to delete?'
    item = gets.chomp
    delete_item(db,item)
    condition = true
  elsif input == 'search'
    puts 'What item would you like to search?'
    item = gets.chomp
    search_item(db,item)
    condition = true
  elsif input == 'list'
    show_list(db)
    condition = true
  elsif input == 'exit'
    puts 'goodbye!'
    condition = true
  else
    puts 'Please type one of the available options'
  end
end

#add_to_list(db,"Birth Certificate","Jorge","Locked Drawer","Document",210517)
#add_to_list(db,"Car Invoice","Jorge","Locked Drawer","Document",180317)
#add_to_list(db,"Car Keys","Jorge","Top Drawer","Item",200517)
#add_to_list(db,"Passport","Jorge","Studio Cabinet","Document",210517)
#add_to_list(db,"Passport","Fer","Studio Cabinet","Document",210517)
#add_to_list(db,"Wedding ring","Fer","Closet Drawer","Item",180517)
#add_to_list(db,"Hard Drive","Jorge","Studio Cabinet","Item",210517)
#search_item(db,"Birth Certificate")
#search_item(db,"Car Keys")
#show_list(db)
#delete_item(db,"Car Invoice")
