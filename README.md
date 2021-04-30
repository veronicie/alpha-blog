# README

Homework for The Complete Ruby on Rails Deveoper Course (69).

-----------

Summary:

- Moved the current_user and logged_in? authentication methods from application helper to application controller and declared them as helper methods so they can be used in views as well.

- Updated the create action in articles controller so the logged in user is associated with the article being created instead of hardcoding the user.

- Updated pages controller home action (root route) to redirect to articles index page if users are logged in.
