# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Scouter::Application.initialize!

#Date::DATE_FORMATS[:default] = '%Y-%b-%d'
#Time::DATE_FORMATS[:db]= '%Y-%b-%d'

Time::DATE_FORMATS.merge!({:db => '%Y-%b-%d', :default => '%Y-%b-%d'})
Date::DATE_FORMATS.merge!({:db => '%Y-%b-%d', :default => '%Y-%b-%d'})
