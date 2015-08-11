# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    Category.create(name:"fruits")
    Category.create(name:"milk")
    Category.create(name:"rice")

    Unit.create(unit_type:"dozens")
    Unit.create(unit_type:"litres")
    Unit.create(unit_type:"kilo grams")

    Product.create(product_name:"bananas",category_id:1,price:5,available:100,unit_id:1)
    Product.create(product_name:"visakha milk",category_id:2,price:25,available:100,unit_id:2)
    Product.create(product_name:"basmati rice",category_id:3,price:5,available:100,unit_id:3)

    Product.find(1).images.create(image_src:"a.png")    
    Product.find(1)images.create(image_src:"b.png")
    Product.find(2)images.create(image_src:"d.png")
    Product.find(2)images.create(image_src:"e.png")
    Product.find(3)images.create(image_src:"f.png")
    Product.find(3)images.create(image_src:"g.png")    

