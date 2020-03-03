# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
List.destroy_all

list = List.new(title: 'React course', color: '#FF0000')
list.save
Task.create(title: 'Trello board', note: 'Test', due_date: '2020-10-09', list: list)