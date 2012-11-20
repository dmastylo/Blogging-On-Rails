Blogging On Rails
=======================
Work In Progress

To install on Development or Production:
    <!-- Move Sass Rails out of group :assets -->
    Add "config.assets.compile = true" to production.rb
    rake db:migrate
    rails generate active_admin:install
    rake active_admin_editor:install:migrations
    rake db:migrate

By Damian for Damian and Big Z