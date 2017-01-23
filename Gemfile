source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

#ruby version
ruby '2.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18.4'

#Memcachier
gem 'dalli', '~> 2.7', '>= 2.7.6'

# Bootstrap 3
gem 'bootstrap-sass', '~> 3.3.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Font-awesome is awesome
gem "font-awesome-rails", '~> 4.5.0.1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', ' ~> 2.7.2'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem "jquery-rails", "~> 4.0.5"

#User jquery UI with rails
gem 'jquery-ui-rails', '~> 5.0.5'

gem "jquery-slick-rails", '~> 1.6.0.1' #carosel
gem 'bootstrap-slider-rails', '~> 7.0', '>= 7.0.1' #slider for reviews

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '~> 2.5.3'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'require_all', '~> 1.3.3'

#for flags
gem 'famfamfam_flags_rails', '~> 0.3.0'

#for active record unions and union alls
#details: https://github.com/brianhempel/active_record_union
gem 'active_record_union', '~> 1.1.0'

#for commenting on shit
#details: https://github.com/elight/acts_as_commentable_with_threading
gem 'acts_as_commentable_with_threading', '~> 2.0', '>= 2.0.1'
#for voting on shit
#details: https://github.com/ryanto/acts_as_votable
gem 'acts_as_votable', '~> 0.10.0'

#strips all attributes of leading and trailing whitespace before validation
#see: https://github.com/rmm5t/strip_attributes
gem 'strip_attributes', '~> 1.7', '>= 1.7.1'

#Formatting text areas
#See: https://www.tinymce.com
gem 'tinymce-rails', '~> 4.3', '>= 4.3.8'

#for displaying times in the user's timezone
gem 'browser-timezone-rails', '~> 0.0.8'


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'twitter', '~> 5.16.0'

gem 'unidecoder', '~> 1.1.2' #decoding foreign characters

#For running asynchronous threads (sending signup emails)
gem 'sucker_punch', '~> 2.0'

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', "~> 3.1.0"
  gem "factory_girl_rails", "~> 4.4.1"
  gem "faker", "~> 1.4.3"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  #needed for Windows local server
  gem 'tzinfo-data'

  # Live reload for quick front end work
  #gem "guard-livereload",  :require => false
  #gem "rack-livereload"
  #gem "rb-fsevent",        :require => false
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end

#compressing heroku
gem 'heroku-deflater', '~> 0.6.2'

#fixing turbo links with jquery
gem 'jquery-turbolinks', '~> 2.1.0'

group :production do
  #heroku gem
  gem 'rails_12factor', '~> 0.0.3'
  gem 'font_assets', '~> 0.1.12'
end


#trying to fix site
gem 'autoprefixer-rails', '~> 6.4.0.2'
gem 'httpclient', '~> 2.8.2.2'


#gem for colorbox (lightbox)
gem 'colorbox-rails', '~> 0.1.2'

#for detecting browser of user
gem 'browser', '~> 2.2'

#going with the recommended PUMA webserver instead of webBrik
gem 'puma', '~> 3.6.0'

#to preload counts in association tables (e.g. preload favorite count for each trip in the trip display)
gem 'preload_counts', '~> 0.0.4'

#For calling API URLs
gem 'httparty', '~> 0.13.7'

#for getting remote img size
gem 'mechanize', '~> 2.7', '>= 2.7.4'


