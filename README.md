# Recommendation

I chose the Ruby language and the Rails framework, because I feel that it provides a simpler way to create the solution and I am also trying to learn more about the language / framework.

I've used a database to store the data and the initial users / products can be found at the ```db/seeds.rb``` file. This way I could implement my solution by using rails ```ActiveRecord```.

I unfortunately could not implement the recommendation system, but instead I am displaying the user's likes and the all other users that also liked the given user's products.
   
## Development

What is necessary to run the application:

- Ruby 2.1.3
- Rails 4.2.1
- SQlite Database

Running the application:

1. ```bundle install```
2. ```rake db:setup```
3. ```rspec spec```
4. ```rails s```
5. go to ```http://localhost:3000```
6. search for one of these: thiago, michelle, gabriela (check more on seeds file)

