# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# GoDaddy SMTP Settings
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address => ‘smtpout.secureserver.net’,
:domain  => ‘www.theupgrade.blog’,
:port      => 80,
:user_name => ENV["godaddy_username"],
:password => ENV["godaddy_password"],
:authentication => :plain
}
