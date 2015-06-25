# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.create(name:"thiago");
user2 = User.create(name:"marcos");
user3 = User.create(name:"michelle");
user4 = User.create(name:"gabriela");
user5 = User.create(name:"juciane");
user6 = User.create(name:"andriele");

product1 = Product.create(product:"The Ring - Horror Movie");
product2 = Product.create(product:"The Conjuring - Horror Movie");
product3 = Product.create(product:"Annabelle - Horror Movie ");
product4 = Product.create(product:"Boyhood - Drama Movie ");
product5 = Product.create(product:"Alien - Suspense Movie");
product6 = Product.create(product:"Mad Max: Fury Road - Action Movie");
product7 = Product.create(product:"Star Wars Episódio VII - Action Movie");
product8 = Product.create(product:"The Fault in Our Stars - Romance");
product9 = Product.create(product:"Ace Ventura: Pet Detective - Comedy Movie");
product10 = Product.create(product:"Minions - Animation Movie");
product11 = Product.create(product:"The SpongeBob - Animation Movie");


Like.create( user: user1, product: product1);
Like.create( user: user1, product: product2);
Like.create( user: user1, product: product6);

Like.create( user: user2, product: product1);
Like.create( user: user2, product: product6);
Like.create( user: user2, product: product11);

Like.create( user: user3, product: product5);
Like.create( user: user3, product: product10);
Like.create( user: user3, product: product11);

Like.create( user: user4, product: product1);
Like.create( user: user4, product: product2);
Like.create( user: user4, product: product3);

Like.create( user: user5, product: product5);
Like.create( user: user5, product: product9);

Like.create( user: user6, product: product5);
Like.create( user: user6, product: product9);
Like.create( user: user6, product: product10);






