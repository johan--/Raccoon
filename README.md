
How to build a project like this from scratch
===============================

### Initialize a rails project with a ember based frontend 
```
$ rails new raccoon & cd raccoon
$ ember new frontend
```

### Remove turbolinks in the project
```
remove 'turbolinks' in Gemfile 
remove 'turbolinks' in app/assets/javascripts/application.js
remove 'turbolinks' in app/views/layouts/application.html.erb
```

### Connect with ember and rails
```
add 'ember-cli-rails' in Gemfile
$ bundle install
$ cd frontend && npm install --save-dev ember-cli-rails-addon@0.0.11
```

### Get things up and running
```
$ rails g controller ember index
add root 'ember#index' in router.rb
```

add three lines in app/views/ember/index.html.erb 
```
<%= csrf_meta_tags %>
<%= include_ember_script_tags :frontend %>
<%= include_ember_stylesheet_tags :frontend %>
```

get it running
```
$ rails s 
```

### Add ember tests *optional
add `mount EmberCLI::Engine => "ember-tests" if Rails.env.development?` in `router.rb` file
go to `http://localhost:3000/ember-tests/frontend` to check the test results

### Add sass support in ember *optional
```
$ cd frontend && npm install --save-dev ember-cli-sass
```



