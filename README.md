# README

Homework for The Complete Ruby on Rails Deveoper Course (69).

-----------

Admin user requirement and test


Summary of changes:

- Add controller test to ensure categories cannot be created by non-admins.

- Add require_admin method (private) to categories controller and use it as before_action for new and create actions.

- Create admin user in categories controller test and sign the user in for new and create action tests.

- Build sign_in_as helper method to test_helper.rb file, so it can be used to sign users in for tests.

- Modify categories integration test file to create and sign a user in (as admin) in order to proceed with the tests.