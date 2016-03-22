# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Store.delete_all
List.delete_all
Itemlists.delete_all
Items.delete_all

user = User.create(first_name: 'Jason', last_name: 'Haas', email: 'Jasonbhaas@gmail.com', phone: '714-566-4343')
stores = Store.create([
	{name: 'Whole Foods', user_id: user.id},
	{name: 'Trader Joes', user_id: user.id},
	{name: 'Farmers Market', user_id: user.id},
	])
mylist = List.create([
	{name: 'WF Sunday', user_id: user.id, store_id: stores[1].id}, 
	{name: 'TJs Wednesday', user_id: user.id, store_id: stores[2].id}, 
	{name: 'FM Saturday', user_id: user.id, store_id: stores[3].id}
	])

items


  create_table "itemlists", force: :cascade do |t|
    t.integer "item_id"
    t.integer "list_id"
  end

  create_table "items", force: :cascade do |t|
    t.string  "name"
    t.integer "quantity"
    t.text    "description"
    t.integer "before"
    t.integer "after"
  end

  create_table "lists", force: :cascade do |t|
    t.string  "name"
    t.integer "store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
  end