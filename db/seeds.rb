# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name:'enmanuel',email:'enma@gmail.com',password:'123456')

user2 = User.create(name:'batalia',email:'nat@gmail.com',password:'123456')

user.group.create(name:'home expenses',icon:'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F37%2F2019%2F07%2F17%2Fmodern-home-exterior-gray-scheme-792ab713.jpg')
user2.group.create(name:'work expenses',icon:'icon-work')

user.expense.create(author_id:user.id,name:'food',amount:35)
user.expense.create(author_id:user.id,name:'electricity',amount:10)

Relation.create(group_id:1,expense_id:1)
Relation.create(group_id:1,expense_id:2)