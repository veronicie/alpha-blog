# README

Homework for The Complete Ruby on Rails Deveoper Course (69).

-----------

Admin user intro

Please note: Only the migration file that was generated was updated, the rest of the updates to the schema and creation of the migration file itself happen as other commands are executed (they don't need to be created/updated manually).

Summary of changes:

- Generated migration file to add admin field to users table, with a default value of false for all users.

Whether a user is admin or not can be tested by first getting a user object in the rails console and checking user.admin? from there.

To switch a user to an admin user you can use the following command in the rails console (assuming you have already selected a user object):

user.toggle!(:admin) 