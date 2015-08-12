# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    # categories
    Category.create(name:"fruits")
    Category.create(name:"milk")
    Category.create(name:"rice")
    # units
    Unit.create(unit_type:"dozens")
    Unit.create(unit_type:"litres")
    Unit.create(unit_type:"kilo grams")
   #products

    Product.create(product_name:"bananas",category_id:1,price:5,available:100,unit_id:1)
    Product.create(product_name:"apples",category_id:1,price:10,available:100,unit_id:1)
    Product.create(product_name:"mangos",category_id:1,price:20,available:80,unit_id:1)

    Product.create(product_name:"visakha milk",category_id:2,price:25,available:100,unit_id:2)
    Product.create(product_name:"heritage milk",category_id:2,price:25,available:100,unit_id:2)
    Product.create(product_name:"trupti milk",category_id:2,price:25,available:100,unit_id:2)
    
    Product.create(product_name:"basmati rice",category_id:3,price:95,available:100,unit_id:3)
    Product.create(product_name:"kurnool rice",category_id:3,price:55,available:100,unit_id:3)
    Product.create(product_name:"samba rice",category_id:3,price:45,available:100,unit_id:3)
   
   #images
   
    Product.find(1).images.create(image_src:"a.png")    
    Product.find(1).images.create(image_src:"b.png")
    Product.find(2).images.create(image_src:"d.png")
    Product.find(2).images.create(image_src:"e.png")
    Product.find(3).images.create(image_src:"f.png")
    Product.find(3).images.create(image_src:"g.png")
    Product.find(4).images.create(image_src:"h.png")
    Product.find(4).images.create(image_src:"i.png")
    Product.find(5).images.create(image_src:"j.png")
    Product.find(5).images.create(image_src:"k.png")  
  
  #status
   Status.craete(name:"pending")
   Status.create(name:"delivered")
   Status.create(name:"returned")
  #users
  User.create(user_name:"admin",email:"admin@gmail.com",phone_number:"9848022338",password:"adminpassword",status:true)
  User.create(user_name:"santosh",email:"abc@gmail.com",phone_number:"8500589739",password:"password1",status:true)
  User.create(user_name:"hadoop",email:"hadoop@gmail.com",phone_number:"7660926802",password:"password2",status:true)
  User.create(user_name:"taj_js",email:"taj@gmail.com",phone_number:"8500032600",password:"password3",status:true)

  #login
   IsAdmins.create(user_id:1)

   
   #address
   User.find(1).addresses.create(address:"ramanagar")
   User.find(2).addresses.create(address:"h.b.colony")
   User.find(3).addresses.create(address:"ishakathota")
   User.find(4).addresses.create(address:"jagadamba")

   #orders
   User.find(2).orders.create(status_id:2)
   User.find(2).orders.create(status_id:2)
   User.find(3).orders.create(status_id:2)
   User.find(3).orders.create(status_id:2)
   User.find(4).orders.create(status_id:2)
   User.find(4).orders.create(status_id:2)
   
   #history(product-order lookup table)
   
   Order.find(1).histories.create(product_id:1,quantity:1,price:50)
   Order.find(2).histories.create(product_id:2,quantity:1,price:100)

   #wishlist

   User.find(1).products << products.first
   User.find(2).products << products.second
   User.find(3).products << products.find(3)
  

