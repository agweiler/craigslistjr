# Category.create(name:'food')
# Category.create(name:'toy')
# Category.create(name:'gadget')
# Category.create(name:'pet')
# Category.create(name:'book')
require_relative '../app/models/post'
require_relative '../app/models/category'
require 'faker'

p toy = Category.where("name = 'toy'").shift
p toy.name
toy.posts.create(title:"Mr.Fantastic", desc:"Super flexible leader of the Fantastic 4", price: "RM 60", url:"http://goo.gl/HI4ohf", date:Time.now.strftime('%Y%m%d'), edit_key:Faker::Lorem.characters(7) )

p Post.all