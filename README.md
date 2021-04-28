# README

Homework for The Complete Ruby on Rails Deveoper Course (69).

-----------

3 step process to add auth system functionality from the back-end.

Step 1) Add bcrypt gem:

In the Gemfile uncomment the line that lists the gem:

gem 'bcrypt', '~> 3.1.7'

Then run $ bundle install to install the gem in your app.

Step 2) Add has_secure_password to your user model. Add the line below in your user.rb model file:

has_secure_password

Step 3) Create a migration file to add the password_digest column to the users table.

    $ rails generate migration add_password_digest_to_users

Then pull up the migration file and fill in the column details within the def change method:

    add_column :users, :password_digest, :string

Save the file and run $ rails db:migrate to make the change to the table

You can test out the functionality from the console by adding passwords to a couple of your existing users and verifying them using the authenticate method. A sample progression of commands from the console could be like below:

    user = User.last
    user.password = "password123"
    user.save

The commands above will add the hashed version (with salt) of the string "password123" to the user's record.

Then you can >>authenticate>> and test the password for the user like below:

    user = User.last
    user.authenticate("password123") # This, being the correct password will return the user object
    user.authenticate("enterincorrectpassword") # This, being an incorrect password, will return false





>>We dont do that (its a has if we want to try it)
    In console:
    -> BCrypt::Password.create("password")
    -> output: "$2a$12$OQd8axrj2FNIt3IabLdn1.lsLwzz4PNzqbOXNvAugqzM5hzXONCTW" 

    Password:
      password = BCrypt::Password.create("password")



