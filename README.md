# README

Homework for The Complete Ruby on Rails Deveoper Course (69).

-----------

Many-to-many association - implementation

Summary of changes:

- Create new migration file to add article_categories table with category_id and article_id columns.

  >> run: rails generate migration create create_article_categories
  >> then change new migration file
  >> run migration file: rails db:migrate

- Create article_category.rb model file and interact with the article_categories table.

- Add the many-to-many association code using the relevant has_many through: association helpers in the article, category and article_category models. 

  >> category.articles << article   // přiřazení articlu ke kaegorii