# README

Homework for The Complete Ruby on Rails Deveoper Course (69).

-----------

To have a profile image associated with an email account you control, add one using the site en.gravatar.com. This will be the globally recognized avatar (gravatar for short) associated with that email address (this step is not necessary to get the functionality working in the app).

Summary of changes (actual ode can be found in the commit):

- Add show action in users controller and a show.html.erb template under views/users.

- Add gravatar_for as a helper method in app/helpers/application_helper.rb file.

- Extract the articles listing code from views/articles/index.html.erb file and add it to an _article.html.erb partial within the same folder.

- Render this partial from both the show and index templates. Be sure to initiate the appropriate instance variable from the users show action.