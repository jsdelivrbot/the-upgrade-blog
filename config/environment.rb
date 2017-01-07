# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# GoDaddy SMTP Settings
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  enable_starttls_auto: true,
  address:              'smtp.gmail.com',
  domain:               'gmail.com',
  port:                 587,
  user_name:            'timkleier@gmail.com',
  password:             'J3susgmail',
  authentication:       :login
  # :address => 'smtp.zoho.com',
  # :domain => 'theupgrade.blog',
  # :port      => 465,
  # :user_name => ENV["zoho_username"],
  # :password => ENV["zoho_password"],
  # :authentication => :login,
  # :ssl => true
}
