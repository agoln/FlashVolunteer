source 'http://rubygems.org'

gem 'rails', '3.2.5' 


# Pagination
gem 'will_paginate', '~> 3.0'
# Authentication
gem 'devise'
# Authorization
gem 'cancan'
# Geocoding
gem 'geocoder' 
# JQuery
gem 'jquery-rails'
# Not sure why directly gem'd
gem 'tlsmail'
# DatePicker
gem 'jquery_datepicker'
# Export to iCal
gem 'icalendar'
# Not sure why directly gem'd
gem 'nokogiri'
# Advanced querying for records
gem "squeel"
# Good admin interface to the backend
gem 'rails_admin'
# API
gem 'grape'

# Delayed Jobs
gem 'delayed_job_active_record'
gem 'foreman'
gem 'hirefireapp'

gem 'uglifier'
gem 'yui-compressor'

group :assets do
	gem 'sass-rails', '~> 3.2.3'
	gem 'compass'
end

gem 'debugger', group: [:development, :test]

gem 'aws-sdk'
gem 'aws-s3'
gem "paperclip"

gem "omniauth-facebook"
gem "omniauth-google-oauth2"
gem "omniauth-twitter"

gem 'wicked'
gem 'classy_enum', '~> 2.0.3'

source :gemcutter
gem 'sinatra', '1.0'
gem 'date_validator'

group :development do
    gem 'factory_girl_rails'
    gem 'rails-footnotes'
    gem 'sqlite3'
end

group :production do
    gem 'mysql2'
    gem 'newrelic_rpm'
    # http://www.imagemagick.com/www/binary-releases.html#windows
    # http://stackoverflow.com/questions/4451213/ruby-1-9-2-how-to-install-rmagick-on-windows
    gem "rmagick" 
end
