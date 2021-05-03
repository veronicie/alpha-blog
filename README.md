# README

Homework for The Complete Ruby on Rails Deveoper Course (69).

-----------

Category model and testing

Summary of changes:

- Created category_test test file and wrote a test to check for the validity of a newly created category object

- Ran failing test

- Added category model

- Added categories table

- Ran passing test

IMPORTANT: If you're running Rails v6.1 and Ruby 3.0, you'll geterrors when you try and run "rails test".

The error is because the gem 'rexml' which was included by default in Ruby 2.6 and 2.7 is not included in Ruby 3.0. So you'll need to add it:

1. Add the following line to your Gemfile beneath the 'will_paginate' gem:

    gem 'rexml', require: false

2. Then run the bundle from your terminal (make sure you are in the rails app folder that you are working on):

    bundle install

Good luck!