# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

davinci_code = Book.create!(name: 'Davinci Code', price: '3400', availability:'Y')
inferno_code = Book.create!(name: 'Inferno', price: '4560', availability:'N')
lost_code = Book.create!(name:'In Search of Lost Time', price: '5430', availability:'Y')
war_code = Book.create!(name:'War and Peace', price: '3550', availability:'N')
hamlet_code = Book.create!(name:'Iamlet', price: '1430', availability:'Y')


Author.create(author_name: 'Dan Brown',book: davinci_code)
Author.create(author_name: 'Dan Brown', book: inferno_code)
Author.create(author_name: 'Marcel Proust', book: lost_code)
Author.create(author_name: 'Leo Tolstoy', book: war_code)
Author.create(author_name: 'William Shakespeare', book: hamlet_code)

