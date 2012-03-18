# refinerycms-imajax: extension for Refinery CMS.
---
This is a small and simple extension that replaces the default behavior for image uploading. By default, all images are uploaded on a single form post. That can lead to timeouts on Heroku (to name one) if you upload too many files at once. What refinerycms-imajax does is simply uploading the files one by one. It will only work with modern browsers that supports FileList and FormData (Chrome is one that supports those) but fallbacks to default behavior. 

## Requirements
---

You should have a Rails project with Refinery (>= 2.0.0 but only tested with 2.0.2).

## Install
---
Add refinerycms-imajax to your `Gemfile`:

	gem 'refinerycms-imajax', "~> 2.0.0.beta1"
	
run

	$ bundle install
	$ rails s
	
It should now work!


## TODO
---
 - Set valid file types based on image model validation (images.js.coffee.erb)
 - Manage locales and remove hard coded ones
 - Add a progress bar for each file maybe?
 - Setup TravisCI to test over multiple Ruby, Rails and Refinery versions
 - Fix Capybara so that it can test multiple file uploads
 

## Tests
---
There is only one request spec actually which is a copy of the refinerycms-images gem. Why? It is not currently possible to test multiple file uploads with Capybara: [https://github.com/jnicklas/capybara/issues/37](https://github.com/jnicklas/capybara/issues/37).

### Run tests

 1. You need a dummy app first:
	
		$ bundle exec rake refinery:testing:dummy_app
		
 2. Run tests:

 		$ bundle exec rake



### How to build this extension as a gem

    cd [imajax directory]
    gem build refinerycms-imajax.gemspec
    gem install refinerycms-imajax.gem

    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-imajax.gem