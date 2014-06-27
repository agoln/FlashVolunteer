ruby '1.9.3'
source 'http://rubygems.org'

gem 'rails', '3.2.18' 
gem 'json', '~> 1.7.7'

# Pagination
gem 'will_paginate', '~> 3.0'
# Authentication
gem 'devise', '= 2.2.3'
# Authorization
gem 'cancan', '= 1.6.9'
# Geocoding
gem 'geocoder', '~> 1.2'
gem 'geoip', '~> 1.4'
# JQuery
gem 'jquery-rails', '~> 2.2'
# Not sure why directly gem'd
gem 'tlsmail'
# DatePicker
gem 'jquery_datepicker'
# Export to iCal
gem 'icalendar', '~> 1.5'
# Not sure why directly gem'd
gem 'nokogiri', '= 1.5.9'
# Advanced querying for records
gem "squeel"
# Good admin interface to the backend
gem 'rails_admin'
# API
gem 'grape'

# Delayed Jobs
gem 'delayed_job_active_record', '~> 0.4'
gem 'foreman'
gem 'hirefire-resource'

gem 'uglifier'
gem 'yui-compressor'

group :assets do
    gem 'sass-rails', '~> 3.2'
    gem 'compass'
end

gem 'aws-sdk'
gem 'aws-s3'
gem "paperclip", '~> 3.4'

gem "omniauth", '=1.1.3'
gem "omniauth-facebook"
gem "omniauth-google-oauth2"
gem "omniauth-twitter"

gem 'wicked'
gem 'classy_enum', '~> 2.0.3'

gem 'sinatra', '1.0'
gem 'date_validator'
gem 'mysql2', '=0.3.11'

gem 'rgeo'
gem 'rgeo-geojson'
gem 'activerecord-mysql2spatial-adapter'

group :development do
  gem 'factory_girl_rails'
  gem 'rails-footnotes'
  gem 'sqlite3'
  gem 'bullet'
end

group :production do
    gem 'newrelic_rpm'
    # http://www.imagemagick.com/www/binary-releases.html#windows
    # http://stackoverflow.com/questions/4451213/ruby-1-9-2-how-to-install-rmagick-on-windows
    gem "rmagick" 
    gem "unicorn"
end
